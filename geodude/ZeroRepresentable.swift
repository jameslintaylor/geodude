//
//  ZeroRepresentable.swift
//  MetalEffects
//
//  Created by James Taylor on 2016-02-06.
//  Copyright © 2016 James Taylor. All rights reserved.
//

import Foundation

/// Instances of conforming types need to provide a "Zero" value.
public protocol ZeroRepresentable {
    static var zero: Self { get }
}

// + Standard library conformance

extension Int: ZeroRepresentable { public static var zero = Int(0) }
extension Int8: ZeroRepresentable { public static var zero = Int8(0) }
extension Int16: ZeroRepresentable { public static var zero = Int16(0) }
extension Int32: ZeroRepresentable { public static var zero = Int32(0) }
extension Int64: ZeroRepresentable { public static var zero = Int64(0) }

extension UInt: ZeroRepresentable { public static var zero = UInt(0) }
extension UInt8: ZeroRepresentable { public static var zero = UInt8(0) }
extension UInt16: ZeroRepresentable { public static var zero = UInt16(0) }
extension UInt32: ZeroRepresentable { public static var zero = UInt32(0) }
extension UInt64: ZeroRepresentable { public static var zero = UInt64(0) }

extension Float: ZeroRepresentable { public static var zero = Float(0) }
extension Double: ZeroRepresentable { public static var zero = Double(0) }
