//
//  CGA.swift
//  Palette
//
//  Created by Kevin Launay on 20/10/2025.
//

import UIKit


enum CGA: String, Colorable {
    
    case black = "#000000"
    case blue = "#0000AA"
    case green = "#00AA00"
    case cyan = "#00AAAA"
    case red = "#AA0000"
    case magenta = "#AA00AA"
    case brown = "#AA5500"
    case lightGray = "#AAAAAA"
    case gray = "#555555"
    case lightBlue = "#5555FF"
    case lightGreen = "#55FF55"
    case lightCyan = "#55FFFF"
    case lightRed = "#FF5555"
    case lightMagenta = "#FF55FF"
    case yellow = "#FFFF55"
    case white = "#FFFFFF"
    
    public var color: UIColor {
        get {
            return ColorHelper.hexcolor(self.rawValue)
        }
    }
    
    public var hex: String {
        get {
            return self.rawValue
        }
    }
    
    static let p0 = [CGA.black, CGA.cyan, CGA.magenta, CGA.lightGray]
    static let p0hi = [CGA.black, CGA.lightCyan, CGA.lightMagenta, CGA.white]
    static let p1 = [CGA.black, CGA.green, CGA.red, CGA.brown]
    static let p1hi = [CGA.black, CGA.lightGreen, CGA.lightRed, CGA.yellow]
}
