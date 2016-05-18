//
//  GDPoint.swift
//  geodude
//
//  Created by James Taylor on 2016-02-03.
//  Copyright © 2016 James Taylor. All rights reserved.
//

import Foundation

/// A structure that contains `x` and `y` values
/// representing a point in a grid system.
public struct GDPoint<Unit: IntervalVariable> {
    public var x: Unit
    public var y: Unit
}

// Equatable
extension GDPoint: Equatable {}
public func == <T> (lhs: GDPoint<T>, rhs: GDPoint<T>) -> Bool {
    return
        lhs.x == rhs.x &&
        lhs.y == rhs.y
}

// Zero
public extension GDPoint where Unit: ZeroRepresentable {
    static var zero: GDPoint<Unit> {
        return GDPoint(x: Unit.zero, y: Unit.zero)
    }
}

// Unit
public extension GDPoint where Unit: UnitRepresentable {
    static var unit: GDPoint<Unit> {
        return GDPoint(x: Unit.unit, y: Unit.unit)
    }
}

// Negatable
public prefix func - <Unit: SignedNumberType> (rhs: GDPoint<Unit>) -> GDPoint<Unit> {
    return GDPoint(x: (-rhs.x), y: (-rhs.y))
}

// Translatable
extension GDPoint: Translatable {
    
    public mutating func translate(d: GDPoint<Unit>) {
        x += d.x
        y += d.y
    }
}

// Bearing
public extension GDPoint where Unit: protocol<TrigonometricType, PiRepresentable, SignedNumberType, FloatLiteralConvertible> {
    
    func bearing(to other: GDPoint<Unit>) -> Unit {
        
        let dx = other.x - x
        let dy = other.y - y
        
        switch other.quadrantAndLeadingAngleRelativeTo(self) {
            
        case (.one, let leadingAngle):
            return Unit.pi * 1.5 + leadingAngle
            
        case (.two, let leadingAngle):
            return leadingAngle
            
        case (.three, let leadingAngle):
            return Unit.pi + leadingAngle
            
        case (.four, let leadingAngle):
            return Unit.pi * 0.5 + leadingAngle
        }
    }
}

// Helpers

private enum Quadrant {
    case one, two, three, four
}

private extension GDPoint where Unit: protocol<TrigonometricType, SignedNumberType> {
    
    func quadrantAndLeadingAngleRelativeTo(other: GDPoint<Unit>) -> (Quadrant, Unit) {
        
        let dx = other.x - x
        let dy = other.y - y
        
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
