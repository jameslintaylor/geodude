//
//  CoreGraphicsConversions.swift
//  PencilBox
//
//  Created by James Taylor on 2016-04-19.
//  Copyright © 2016 James Taylor. All rights reserved.
//

import Foundation

// CGPoint <-> Point<CGFloat>

public extension CGPoint {
    var pb: Point<CGFloat> {
        return Point(x: x, y: y)
    }
}

public extension Point where IntervalVariable: CGFloatConvertible {
    var cg: CGPoint {
        return CGPoint(x: x.asCGFloat, y: y.asCGFloat)
    }
}

// CGSize <-> Point<CGSize>

public extension CGSize {
    var pb: Size<CGFloat> {
        return Size(width: width, height: height)
    }
}

public extension Size where IntervalVariable: CGFloatConvertible {
    var cg: CGSize {
        return CGSize(width: width.asCGFloat, height: height.asCGFloat)
    }
}

// CGRect <-> Point<CGRect>

public extension CGRect {
    var pb: Rectangle<CGFloat> {
        return Rectangle(origin: origin.pb, size: size.pb)
    }
}

public extension Rectangle where IntervalVariable: CGFloatConvertible {
    var cg: CGRect {
        return CGRect(origin: origin.cg, size: size.cg)
    }
}
