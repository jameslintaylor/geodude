//
//  Heading.swift
//  PencilBox
//
//  Created by James Taylor on 2016-04-19.
//  Copyright © 2016 James Taylor. All rights reserved.
//

import Foundation

private enum Quadrant {
    case one, two, three, four
}

private extension PointConvertible where IntervalVariable: DoubleConvertible {
    
    func quadrantAndLeadingAngleRelativeTo <Other: PointConvertible where Other.IntervalVariable == IntervalVariable> (other: Other) -> (Quadrant, Double) {
        
        let dx = other.asPoint.x - asPoint.x
        let dy = other.asPoint.y - asPoint.y
        
        switch (dx > 0, dy > 0) {
        
        // Q1
        case (true, true):
            let angle = atan(dy / dx)
            return (.one, angle)
        
        // Q2
        case (false, true):
            let angle = atan(-dx / dy)
            return (.two, angle)
        
        // Q3
        case (true, false):
            let angle = atan(dx / -dy)
            return (.three, angle)
            
        // Q4
        case (false, false):
            let angle = atan(-dy / -dx)
            return (.four, angle)
        }
    }
}

public extension PointConvertible where IntervalVariable: DoubleConvertible {
    
    func headingTo <Other: PointConvertible where Other.IntervalVariable == IntervalVariable> (other: Other) -> Double {
        
        let dx = other.asPoint.x - asPoint.x
        let dy = other.asPoint.y - asPoint.y
        
        switch other.quadrantAndLeadingAngleRelativeTo(self) {
        
        case (.one, let leadingAngle):
            return M_PI * 1.5 + leadingAngle
        
        case (.two, let leadingAngle):
            return leadingAngle
        
        case (.three, let leadingAngle):
            return M_PI + leadingAngle
        
        case (.four, let leadingAngle):
            return M_PI * 0.5 + leadingAngle
        }
    }
}
