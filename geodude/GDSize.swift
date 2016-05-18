//
//  GDSize.swift
//  geodude
//
//  Created by James Taylor on 2016-02-03.
//  Copyright © 2016 James Taylor. All rights reserved.
//

import Foundation

/// A structure containing `width` and `height` values 
/// representing a size in a grid system.
public struct GDSize<Unit: IntervalVariable> {
    public var width: Unit
    public var height: Unit
    
    public init(width: Unit, height: Unit) {
        self.width = width
        self.height = height
    }
    
    var area: Unit { return width * height }
}

// Map
public extension GDSize {
    func map <T> (f: (Unit) throws -> T) rethrows -> GDSize<T> {
        return try GDSize<T>(width: f(width), height: f(height))
    }
}

// Equatable
extension GDSize: Equatable {}
public func == <Unit> (lhs: GDSize<Unit>, rhs: GDSize<Unit>) -> Bool {
    return
        lhs.width == rhs.width &&
        lhs.height == rhs.height
}

// Zero
public extension GDSize where Unit: ZeroRepresentable {
    static var zero: GDSize<Unit> {
        return GDSize(width: Unit.zero, height: Unit.zero)
    }
}

// Unit
public extension GDSize where Unit: UnitRepresentable {
    static var unit: GDSize<Unit> {
        return GDSize(width: Unit.unit, height: Unit.unit)
    }
}

// Scalable
extension GDSize: Scalable {
    public mutating func scale(by: Unit) {
        width *= by
        height *= by
    }
}
