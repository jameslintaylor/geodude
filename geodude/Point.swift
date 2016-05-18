//
//  Point.swift
//  PencilBox
//
//  Created by James Taylor on 2016-02-03.
//  Copyright © 2016 James Taylor. All rights reserved.
//

import Foundation

/// A structure that contains `x` and `y` values
/// representing a point in a grid system.
public struct Point<IntervalVariable: IntervalVariableType> {
    public let x: IntervalVariable
    public let y: IntervalVariable
    
    public init(x: IntervalVariable, y: IntervalVariable) {
        self.x = x
        self.y = y
    }
}

// + Equatable
extension Point: Equatable {}
public func == <T> (lhs: Point<T>, rhs: Point<T>) -> Bool {
    return (lhs.x == rhs.x) && (lhs.y == rhs.y)
}

// + Point.Zero
public extension Point where IntervalVariable: ZeroRepresentable {
    
    /// `Point` constructed by assigning `x` and `y` to 
    /// their "Zero" value.
    static var zero: Point<IntervalVariable> {
        return Point<IntervalVariable>(x: IntervalVariable.zero, y: IntervalVariable.zero)
    }
}

// + Negatable
extension Point: Negatable {}
public prefix func -<T: SignedNumberType>(rhs: Point<T>) -> Point<T> {
    return Point(x: (-rhs.x), y: (-rhs.y))
}

// + Translation
public extension Point {
    
    /// Returns a `Point` obtained by translating
    /// `self` by `d`.
    func translated(by d: Point<IntervalVariable>) -> Point<IntervalVariable> {
        return Point(x: x + d.x, y: y + d.y)
    }
}
