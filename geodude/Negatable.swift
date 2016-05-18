//
//  Negatable.swift
//  Zeno
//
//  Created by James Taylor on 2016-02-08.
//  Copyright © 2016 James Taylor. All rights reserved.
//

import Foundation

/// Instances of conforming types can be 'negated'
/// by applying the prefix operator `-`.
public protocol Negatable {
    prefix func -(_: Self) -> Self
}

// + Standard library conformance

extension Int: Negatable {}
extension Int8: Negatable {}
extension Int16: Negatable {}
extension Int32: Negatable {}
extension Int64: Negatable {}

extension Float: Negatable {}
extension Double: Negatable {}
