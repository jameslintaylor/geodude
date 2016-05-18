//
//  Translation.swift
//  PencilBox
//
//  Created by James Taylor on 2016-04-19.
//  Copyright © 2016 James Taylor. All rights reserved.
//

import Foundation

public extension PointConvertible {
    
    func translationTo <Other: PointConvertible where Other.IntervalVariable == IntervalVariable> (other: Other) -> Point<IntervalVariable> {
        
        let dx = other.asPoint.x - asPoint.x
        let dy = other.asPoint.y - asPoint.y
        
        return Point(x: dx, y: dy)
    }
}

public func * <V: IntervalVariableType> (lhs: Point<V>, rhs: V) -> Point<V> {
    return Point(x: lhs.x * rhs, y: lhs.y * rhs)
}
