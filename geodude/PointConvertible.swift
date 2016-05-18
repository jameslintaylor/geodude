//
//  PointConvertible.swift
//  PencilBox
//
//  Created by James Taylor on 2016-04-19.
//  Copyright © 2016 James Taylor. All rights reserved.
//

import Foundation

public protocol PointConvertible {
    
    associatedtype IntervalVariable: IntervalVariableType
    var asPoint: Point<IntervalVariable> { get }
}

extension Point: PointConvertible {
    
    // Simply return a copy of self.
    public var asPoint: Point<IntervalVariable> { return self }
}

extension Rectangle: PointConvertible {
    
    // Return self's center.
    public var asPoint: Point<IntervalVariable> { return center }
}
