//
//  IntervalVariableType.swift
//  MetalEffects
//
//  Created by James Taylor on 2016-02-02.
//  Copyright © 2016 James Taylor. All rights reserved.
//

import Foundation

/// Measurements between differences of a conforming instance 
/// are interpreted as meaningful.
public protocol IntervalVariableType: SignedNumberType {
    
    func + (_: Self, _: Self) -> Self
    func - (_: Self, _: Self) -> Self
    func * (_: Self, _: Self) -> Self
    func / (_: Self, _: Self) -> Self
    func % (_: Self, _: Self) -> Self
}

// + Standard library conformance

extension Int: IntervalVariableType {}
extension Int8: IntervalVariableType {}
extension Int16: IntervalVariableType {}
extension Int32: IntervalVariableType {}
extension Int64: IntervalVariableType {}

extension UInt: IntervalVariableType {}
extension UInt8: IntervalVariableType {}
extension UInt16: IntervalVariableType {}
extension UInt32: IntervalVariableType {}
extension UInt64: IntervalVariableType {}

extension Float: IntervalVariableType {}
extension Double: IntervalVariableType {}
extension CGFloat: IntervalVariableType {}

// Random comment test 
