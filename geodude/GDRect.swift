//
//  GDRect.swift
//  geodude
//
//  Created by James Taylor on 2016-02-02.
//  Copyright © 2016 James Taylor. All rights reserved.
//

import Foundation

/// A structure containing `origin` and `size` properties
/// representing a rectangle in a grid system.
public struct GDRect<Unit: IntervalVariable> {
    public var origin: GDPoint<Unit>
    public var size: GDSize<Unit>
}

// Alternate initializers
public extension GDRect {

    init(x: Unit, y: Unit, width: Unit, height: Unit) {
        let origin = GDPoint(x: x, y: y)
        let size = GDSize(width: width, height: height)
        self.init(origin: origin, size: size)
    }
}

// Equatable
extension GDRect: Equatable {}
public func == <Unit> (lhs: GDRect<Unit>, rhs: GDRect<Unit>) -> Bool {
    return
        lhs.origin == rhs.origin &&
        lhs.size == rhs.size
}

// Translatable
extension GDRect: Translatable {
    public mutating func translate(d: GDPoint<Unit>) {
        origin.translate(d)
    }
}

public extension GDRect where Unit: IntegerLiteralConvertible {
    var center: GDPoint<Unit> {
        let cx = origin.x + size.width/2
        let cy = origin.y + size.height/2
        return GDPoint(x: cx, y: cy)
    }
}

public extension GDRect where Unit: Comparable {
    
    func intersection(with rect: GDRect<Unit>) -> GDRect<Unit>? {
        guard intersects(rect) else { return nil }
        
        let x = max(origin.x, rect.origin.x)
        let y = max(origin.y, rect.origin.y)
        let width = min(origin.x + size.width - x, rect.origin.x + rect.size.width - x)
        let height = min(origin.y + size.height - y, rect.origin.y + rect.size.height - y)
        return GDRect(x: x, y: y, width: width, height: height)
    }
    
    func intersects(rect: GDRect<Unit>) -> Bool {
        let c1 = (origin.x + size.width) <= rect.origin.x
        let c2 = origin.x >= (rect.origin.x + rect.size.width)
        let c3 = (origin.y + size.height) <= rect.origin.y
        let c4 = origin.y >= (rect.origin.y + rect.size.height)
        return !(c1 || c2 || c3 || c4)
    }

    func contains(point: GDPoint<Unit>) -> Bool {
        let c1 = point.x >= origin.x
        let c2 = point.x <= (origin.x + size.width)
        let c3 = point.y >= origin.y
        let c4 = point.y <= (origin.y + size.height)
        return c1 && c2 && c3 && c4
    }
    
    func contains(rect: GDRect<Unit>) -> Bool {
        let c1 = rect.origin.x >= origin.x
        let c2 = (rect.origin.x + rect.size.width) <= (origin.x + size.width)
        let c3 = rect.origin.y >= origin.y
        let c4 = (rect.origin.y + rect.size.height) <= (origin.y + size.height)
        return c1 && c2 && c3 && c4
    }
}
