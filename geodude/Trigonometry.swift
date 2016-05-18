//
//  Trigonometry.swift
//  PencilBox
//
//  Created by James Taylor on 2016-04-19.
//  Copyright © 2016 James Taylor. All rights reserved.
//

import Foundation

public func sin <IntervalVariable: IntervalVariableType where IntervalVariable: DoubleConvertible> (x: IntervalVariable) -> Double {
    return sin(x.asDouble)
}

public func asin <IntervalVariable: IntervalVariableType where IntervalVariable: DoubleConvertible> (x: IntervalVariable) -> Double {
    return asin(x.asDouble)
}

public func sinh <IntervalVariable: IntervalVariableType where IntervalVariable: DoubleConvertible> (x: IntervalVariable) -> Double {
    return sinh(x.asDouble)
}

public func cos <IntervalVariable: IntervalVariableType where IntervalVariable: DoubleConvertible> (x: IntervalVariable) -> Double {
    return cos(x.asDouble)
}

public func acos <IntervalVariable: IntervalVariableType where IntervalVariable: DoubleConvertible> (x: IntervalVariable) -> Double {
    return acos(x.asDouble)
}

public func cosh <IntervalVariable: IntervalVariableType where IntervalVariable: DoubleConvertible> (x: IntervalVariable) -> Double {
    return cosh(x.asDouble)
}

public func tan <IntervalVariable: IntervalVariableType where IntervalVariable: DoubleConvertible> (x: IntervalVariable) -> Double {
    return tan(x.asDouble)
}

public func atan <IntervalVariable: IntervalVariableType where IntervalVariable: DoubleConvertible> (x: IntervalVariable) -> Double {
    return atan(x.asDouble)
}

public func tanh <IntervalVariable: IntervalVariableType where IntervalVariable: DoubleConvertible> (x: IntervalVariable) -> Double {
    return tanh(x.asDouble)
}
