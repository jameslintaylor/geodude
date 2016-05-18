//
//  Size.swift
//  PencilBox
//
//  Created by James Taylor on 2016-02-03.
//  Copyright © 2016 James Taylor. All rights reserved.
//

import Foundation

/// A structure containing `width` and `height` values 
/// representing a size in a grid system.
public struct Size<IntervalVariable: IntervalVariableType> {
    public let width: IntervalVariable
    public let height: IntervalVariable
    
    public init(width: IntervalVariable, height: IntervalVariable) {
        self.width = width
        self.height = height
    }
}

// + Equatable
extension Size: Equatable {}
public func == <IntervalVariable> (lhs: Size<IntervalVariable>, rhs: Size<IntervalVariable>) -> Bool {
    return (lhs.width == rhs.width) && (lhs.height == rhs.height)
}

// + Computed properties
public extension Size {
    var area: IntervalVariable { return width * height }
}

// + Zero
public extension Size where IntervalVariable: ZeroRepresentable {
    
    /// `Point` constructed by assigning `x` and `y` to
    /// their "Zero" value.
    static var zero: Size<IntervalVariable> {
        return Size<IntervalVariable>(width: IntervalVariable.zero, height: IntervalVariable.zero)
    }
}

// + Unit 
public extension Size where IntervalVariable: UnitRepresentable {
    
    /// `Size` constructed by assigning `x` and `y` to
    /// their "Unit" value.
    static var unit: Size<IntervalVariable> {
        return Size<IntervalVariable>(width: IntervalVariable.unit, height: IntervalVariable.unit)
    }
}