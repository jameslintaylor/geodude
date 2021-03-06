//
//  Scalable.swift
//  geodude
//
//  Created by James Taylor on 2016-05-18.
//  Copyright © 2016 James Taylor. All rights reserved.
//

import Foundation

/// Conforming types can be scaled.
public protocol Scalable {
    associatedtype Factor
    
    mutating func scale(_: Factor)
}

extension Scalable {
    
    /// Non-mutating variant of `translate`.
    func scaled(_ f: Factor) -> Self {
        var copy = self
        copy.scale(f)
        return copy
    }
}
