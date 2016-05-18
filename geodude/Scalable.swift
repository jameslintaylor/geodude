//
//  Scalable.swift
//  geodude
//
//  Created by James Taylor on 2016-05-18.
//  Copyright © 2016 James Taylor. All rights reserved.
//

import Foundation

/// Conforming types can be scaled
public protocol Scalable {
    associatedtype Unit
    
    mutating func scale(_: Unit)
}

extension Scalable {
    
    /// Non-mutating variant of `translate`.
    func scaled(_ d: Unit) -> Self {
        var copy = self
        copy.scale(d)
        return copy
    }
}
