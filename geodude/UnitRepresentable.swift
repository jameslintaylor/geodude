//
//  UnitRepresentable.swift
//  PencilBox
//
//  Created by James Taylor on 2016-02-14.
//  Copyright © 2016 James Taylor. All rights reserved.
//

import Foundation

/// Instances of conforming types need to provide a "Unit" value.
public protocol UnitRepresentable {
    static var unit: Self { get }
}

// + Standard library conformance

extension Int: UnitRepresentable { public static var unit = Int(1) }
extension Int8: UnitRepresentable { public static var unit = Int8(1) }
extension Int16: UnitRepresentable { public static var unit = Int16(1) }
extension Int32: UnitRepresentable { public static var unit = Int32(1) }
extension Int64: UnitRepresentable { public static var unit = Int64(1) }

extension UInt: UnitRepresentable { public static var unit = UInt(1) }
extension UInt8: UnitRepresentable { public static var unit = UInt8(1) }
extension UInt16: UnitRepresentable { public static var unit = UInt16(1) }
extension UInt32: UnitRepresentable { public static var unit = UInt32(1) }
extension UInt64: UnitRepresentable { public static var unit = UInt64(1) }

extension Float: UnitRepresentable { public static var unit = Float(1) }
extension Double: UnitRepresentable { public static var unit = Double(1) }
