//
//  Geometry.swift
//  PencilBox
//
//  Created by James Taylor on 2016-02-02.
//  Copyright © 2016 James Taylor. All rights reserved.
//

import Foundation

/// A structure containing `origin` and `size` properties
/// representing a rectangle in a grid system.
public struct Rectangle<IntervalVariable: IntervalVariableType> {
    public let origin: Point<IntervalVariable>
    public let size: Size<IntervalVariable>
    
    public init(origin: Point<IntervalVariable>, size: Size<IntervalVariable>) {
        self.origin = origin
        self.size = size
    }
}

// + Equatable
extension Rectangle: Equatable {}
public func == <IntervalVariable> (lhs: Rectangle<IntervalVariable>, rhs: Rectangle<IntervalVariable>) -> Bool {
    return (lhs.origin == rhs.origin) && (lhs.size == rhs.size)
}

// + Initializers 
public extension Rectangle {
    init(x: IntervalVariable, y: IntervalVariable, width: IntervalVariable, height: IntervalVariable) {
        self.init(origin: Point(x: x, y: y), size: Size(width: width, height: height))
    }
}

// + Computed properties
public extension Rectangle {
    
    var area: IntervalVariable { return size.area }
    var width: IntervalVariable { return size.width }
    var height: IntervalVariable { return size.height }
    
    var center: Point<IntervalVariable> {
        let x = origin.x + width/2
        let y = origin.y + height/2
        return Point(x: x, y: y)
    }
}

// + Translation
public extension Rectangle {
    func translated(by d: Point<IntervalVariable>) -> Rectangle<IntervalVariable> {
        return Rectangle(origin: origin.translated(by: d), size: size)
    }
}

// + Intersects
public extension Rectangle {
    func intersect(with rect: Rectangle<IntervalVariable>) -> Rectangle<IntervalVariable>? {
        guard intersects(rect) else { return nil }
        let x = max(origin.x, rect.origin.x)
        let y = max(origin.y, rect.origin.y)
        let width = min(origin.x + size.width - x, rect.origin.x + rect.size.width - x)
        let height = min(origin.y + size.height - y, rect.origin.y + rect.size.height - y)
        return Rectangle(origin: Point(x: x, y: y), size: Size(width: width, height: height))
    }
    
    func intersects(rect: Rectangle<IntervalVariable>) -> Bool {
        let c1 = (origin.x + size.width) <= rect.origin.x
        let c2 = origin.x >= (rect.origin.x + rect.size.width)
        let c3 = (origin.y + size.height) <= rect.origin.y
        let c4 = origin.y >= (rect.origin.y + rect.size.height)
        return !(c1 || c2 || c3 || c4)
    }
}

// + Contains
public extension Rectangle {
    func contains(point: Point<IntervalVariable>) -> Bool {
        let c1 = point.x >= origin.x
        let c2 = point.x <= (origin.x + size.width)
        let c3 = point.y >= origin.y
        let c4 = point.y <= (origin.y + size.height)
        return c1 && c2 && c3 && c4
    }
    
    func contains(rect: Rectangle<IntervalVariable>) -> Bool {
        let c1 = rect.origin.x >= origin.x
        let c2 = (rect.origin.x + rect.size.width) <= (origin.x + size.width)
        let c3 = rect.origin.y >= origin.y
        let c4 = (rect.origin.y + rect.size.height) <= (origin.y + size.height)
        return c1 && c2 && c3 && c4
    }
}