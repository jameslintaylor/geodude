//
//  CGFloatConvertible.swift
//  geodude
//
//  Created by James Taylor on 2016-04-19.
//  Copyright © 2016 James Taylor. All rights reserved.
//

import Foundation
import UIKit

/// Conforming types can be converted to an "equivalent" `CGFloat`.
public protocol CGFloatConvertible {
    var asCGFloat: CGFloat { get }
}

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
