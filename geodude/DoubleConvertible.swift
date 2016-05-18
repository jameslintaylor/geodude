//
//  DoubleConvertible.swift
//  PencilBox
//
//  Created by James Taylor on 2016-04-19.
//  Copyright © 2016 James Taylor. All rights reserved.
//

import Foundation

public protocol DoubleConvertible {
    var asDouble: Double { get }
}

// + Standard library conformance

extension Int: DoubleConvertible {
    public var asDouble: Double { return Double(self) }
}

extension Float: DoubleConvertible {
    public var asDouble: Double { return Double(self) }
}

extension Double: DoubleConvertible {
    public var asDouble: Double { return Double(self) }
}

extension CGFloat: DoubleConvertible {
    public var asDouble: Double { return Double(self) }
}
