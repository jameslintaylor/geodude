//
//  PiRepresentable.swift
//  geodude
//
//  Created by James Taylor on 2016-05-18.
//  Copyright © 2016 James Taylor. All rights reserved.
//

import Foundation
import UIKit

/// Conforming types are able to represent pi.
public protocol PiRepresentable {
    static var pi: Self { get }
}

extension Float: PiRepresentable { public static var pi = Float(M_PI) }
extension Double: PiRepresentable { public static var pi = Double(M_PI) }
extension CGFloat: PiRepresentable { public static var pi = CGFloat(M_PI) }

public extension PiRepresentable where Self: protocol<ArithmeticType, FloatLiteralConvertible> {
    static var quarterPi: Self { return Self.pi * 0.25 }
    static var halfPi: Self { return Self.pi * 0.5 }
    static var twoPi: Self { return Self.pi * 2.0 }
    static var fourPi: Self { return Self.pi * 4.0 }
}
