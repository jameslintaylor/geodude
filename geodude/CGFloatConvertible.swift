//
//  CGFloatConvertible.swift
//  PencilBox
//
//  Created by James Taylor on 2016-04-19.
//  Copyright © 2016 James Taylor. All rights reserved.
//

import Foundation

public protocol CGFloatConvertible {
    var asCGFloat: CGFloat { get }
}

// + Standard library conformance

extension Int: CGFloatConvertible {
    public var asCGFloat: CGFloat { return CGFloat(self) }
}

extension Float: CGFloatConvertible {
    public var asCGFloat: CGFloat { return CGFloat(self) }
}

extension Double: CGFloatConvertible {
    public var asCGFloat: CGFloat { return CGFloat(self) }
}

extension CGFloat: CGFloatConvertible {
    public var asCGFloat: CGFloat { return self }
}
