//
//  Rotatable.swift
//  geodude
//
//  Created by James Taylor on 2016-05-18.
//  Copyright © 2016 James Taylor. All rights reserved.
//

import Foundation

/// Conforming types can be scaled.
public protocol Rotatable {
    associatedtype Angle
    
    mutating func rotate(_: Angle)
}

extension Rotatable {
    
    /// Non-mutating variant of `translate`.
    func scaled(_ a: Angle) -> Self {
        var copy = self
        copy.rotate(a)
        return copy
    }
}
