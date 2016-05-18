//
//  CoreGraphicsConversions.swift
//  geodude
//
//  Created by James Taylor on 2016-04-19.
//  Copyright © 2016 James Taylor. All rights reserved.
//

import Foundation
import UIKit

public extension CGPoint {
    var gd: GDPoint<CGFloat> { return GDPoint(x: x, y: y) }
}

public extension GDPoint where Unit: CGFloatConvertible {
    var cg: CGPoint { return CGPoint(x: x.asCGFloat, y: y.asCGFloat) }
}

public extension CGSize {
    var gd: GDSize<CGFloat> { return GDSize(width: width, height: height) }
}

public extension GDSize where Unit: CGFloatConvertible {
    var cg: CGSize { return CGSize(width: width.asCGFloat, height: height.asCGFloat) }
}

public extension CGRect {
    var gd: GDRect<CGFloat> { return GDRect(origin: origin.gd, size: size.gd) }
}

public extension GDRect where Unit: CGFloatConvertible {
    var cg: CGRect { return CGRect(origin: origin.cg, size: size.cg) }
}
