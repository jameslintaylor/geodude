//
//  Translatable.swift
//  geodude
//
//  Created by James Taylor on 2016-05-18.
//  Copyright © 2016 James Taylor. All rights reserved.
//

import Foundation

/// Conforming types can be translated.
public protocol Translatable {
    associatedtype Unit: IntervalVariable
    
    mutating func translate(_: GDPoint<Unit>)
}

extension Translatable {
    
    /// Non-mutating variant of `translate`.
    func translated(_ d: GDPoint<Unit>) -> Self {
        var copy = self
        copy.translate(d)
        return copy
    }
}
