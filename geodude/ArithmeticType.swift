//
//  ArithmeticType.swift
//  geodude
//
//  Created by James Taylor on 2016-05-18.
//  Copyright © 2016 James Taylor. All rights reserved.
//

import Foundation
import UIKit

/// Conforming types's values can be operated on using the + (plus) - (minus) * (times) / (divided by) % (modulo) arithmetic operators.
public protocol ArithmeticType {
    func + (_: Self, _: Self) -> Self
    func - (_: Self, _: Self) -> Self
    func * (_: Self, _: Self) -> Self
    func / (_: Self, _: Self) -> Self
    func % (_: Self, _: Self) -> Self
}

extension Int: ArithmeticType {}
extension Int8: ArithmeticType {}
extension Int16: ArithmeticType {}
extension Int32: ArithmeticType {}
extension Int64: ArithmeticType {}

extension UInt: ArithmeticType {}
extension UInt8: ArithmeticType {}
extension UInt16: ArithmeticType {}
extension UInt32: ArithmeticType {}
extension UInt64: ArithmeticType {}

extension Float: ArithmeticType {}
extension Double: ArithmeticType {}
extension CGFloat: ArithmeticType {}

// Compound assignment operators

func += <T: ArithmeticType> (inout lhs: T, rhs: T) { lhs = lhs + rhs }
func -= <T: ArithmeticType> (inout lhs: T, rhs: T) { lhs = lhs - rhs }
func *= <T: ArithmeticType> (inout lhs: T, rhs: T) { lhs = lhs * rhs }
func /= <T: ArithmeticType> (inout lhs: T, rhs: T) { lhs = lhs / rhs }
func %= <T: ArithmeticType> (inout lhs: T, rhs: T) { lhs = lhs % rhs }
