//
//  IntervalVariable.swift
//  geodude
//
//  Created by James Taylor on 2016-02-02.
//  Copyright © 2016 James Taylor. All rights reserved.
//

import Foundation
import UIKit

/// Types conforming to this protocol should have the property that
/// differences between values of that type are meaningful.
public protocol IntervalVariable: ArithmeticType, Equatable { }

extension Int: IntervalVariable {}
extension Int8: IntervalVariable {}
extension Int16: IntervalVariable {}
extension Int32: IntervalVariable {}
extension Int64: IntervalVariable {}

extension UInt: IntervalVariable {}
extension UInt8: IntervalVariable {}
extension UInt16: IntervalVariable {}
extension UInt32: IntervalVariable {}
extension UInt64: IntervalVariable {}

extension Float: IntervalVariable {}
extension Double: IntervalVariable {}
extension CGFloat: IntervalVariable {}
