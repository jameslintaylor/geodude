//
//  TrigonometricType.swift
//  geodude
//
//  Created by James Taylor on 2016-04-19.
//  Copyright © 2016 James Taylor. All rights reserved.
//

import Foundation
import UIKit

/// Conforming types need to have static implementations for common trigonometric functions. 
public protocol TrigonometricType {
    
    static func sin(_: Self) -> Self
    static func asin(_: Self) -> Self
    static func sinh(_: Self) -> Self
    
    static func cos(_: Self) -> Self
    static func acos(_: Self) -> Self
    static func cosh(_: Self) -> Self
    
    static func tan(_: Self) -> Self
    static func atan(_: Self) -> Self
    static func tanh(_: Self) -> Self
}

extension Float: TrigonometricType {
    
    public static func sin(x: Float) -> Float { return Foundation.sin(x) }
    public static func asin(x: Float) -> Float { return Foundation.asin(x) }
    public static func sinh(x: Float) -> Float { return Foundation.sinh(x) }
    
    public static func cos(x: Float) -> Float { return Foundation.cos(x) }
    public static func acos(x: Float) -> Float { return Foundation.acos(x) }
    public static func cosh(x: Float) -> Float { return Foundation.cosh(x) }
    
    public static func tan(x: Float) -> Float { return Foundation.tan(x) }
    public static func atan(x: Float) -> Float { return Foundation.atan(x) }
    public static func tanh(x: Float) -> Float { return Foundation.tanh(x) }
}

extension Double: TrigonometricType {
    
    public static func sin(x: Double) -> Double { return Foundation.sin(x) }
    public static func asin(x: Double) -> Double { return Foundation.asin(x) }
    public static func sinh(x: Double) -> Double { return Foundation.sinh(x) }
    
    public static func cos(x: Double) -> Double { return Foundation.cos(x) }
    public static func acos(x: Double) -> Double { return Foundation.acos(x) }
    public static func cosh(x: Double) -> Double { return Foundation.cosh(x) }
    
    public static func tan(x: Double) -> Double { return Foundation.tan(x) }
    public static func atan(x: Double) -> Double { return Foundation.atan(x) }
    public static func tanh(x: Double) -> Double { return Foundation.tanh(x) }
}

extension CGFloat: TrigonometricType {
    
    public static func sin(x: CGFloat) -> CGFloat { return UIKit.sin(x) }
    public static func asin(x: CGFloat) -> CGFloat { return UIKit.asin(x) }
    public static func sinh(x: CGFloat) -> CGFloat { return UIKit.sinh(x) }
    
    public static func cos(x: CGFloat) -> CGFloat { return UIKit.cos(x) }
    public static func acos(x: CGFloat) -> CGFloat { return UIKit.acos(x) }
    public static func cosh(x: CGFloat) -> CGFloat { return UIKit.cosh(x) }
    
    public static func tan(x: CGFloat) -> CGFloat { return UIKit.tan(x) }
    public static func atan(x: CGFloat) -> CGFloat { return UIKit.atan(x) }
    public static func tanh(x: CGFloat) -> CGFloat { return UIKit.tanh(x) }
}

// Free functions
func sin <T: TrigonometricType> (x: T) -> T { return T.sin(x) }
func asin <T: TrigonometricType> (x: T) -> T { return T.asin(x) }
func sinh <T: TrigonometricType> (x: T) -> T { return T.sinh(x) }

func cos <T: TrigonometricType> (x: T) -> T { return T.cos(x) }
func acos <T: TrigonometricType> (x: T) -> T { return T.acos(x) }
func cosh <T: TrigonometricType> (x: T) -> T { return T.cosh(x) }

func tan <T: TrigonometricType> (x: T) -> T { return T.tan(x) }
func atan <T: TrigonometricType> (x: T) -> T { return T.atan(x) }
func tanh <T: TrigonometricType> (x: T) -> T { return T.tanh(x) }
