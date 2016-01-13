//: Playground - noun: a place where people can play

import Cocoa

extension CGColor {
    class var whiteColor: CGColor {
        return CGColorCreateGenericRGB(1, 1, 1, 1)
    }

    class var blackColor: CGColor {
        return CGColorCreateGenericRGB(0, 0, 0, 1)
    }
}

func randomPointsWithinRect(rect: CGRect, numberOfPoints n: Int) -> [CGPoint] {
    let maxX = rect.width
    let maxY = rect.height
    var x: Int = 0
    arc4random_stir()
    return []
}

let outputSize = CGSize(width: 500, height: 500)

class OutputView: NSView {

    let backgroundColor = CGColor.whiteColor
    let pointColor = CGColor.blackColor
    let pointSize = CGSize(width: 3, height: 3)

    override func drawRect(dirtyRect: NSRect) {
        let context = NSGraphicsContext.currentContext()?.CGContext
        CGContextSetFillColorWithColor(context, backgroundColor)
        CGContextFillRect(context, frame)

        CGContextSetFillColorWithColor(context, pointColor)
        let testPoint = CGRect(origin: CGPoint(x: 100, y: 100), size: pointSize)
        CGContextFillRect(context, testPoint)
    }
}

OutputView(frame: CGRect(origin: CGPointZero, size: outputSize))
