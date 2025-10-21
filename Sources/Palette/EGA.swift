//
//  EGA.swift
//  Palette
//
//  Created by Kevin Launay on 20/10/2025.
//
import UIKit

public enum EGA: String, Colorable {
    case black = "#000000"
    case blue = "#0000AA"
    case green = "#00AA00"
    case cyan = "#00AAAA"
    case red = "#AA0000"
    case magenta = "#AA00AA"
    case brown = "#AA5500"
    case lightGray = "#AAAAAA"
    case darkGray = "#555555"
    case brightBlue = "#5555FF"
    case brightGreen = "#55FF55"
    case brightCyan = "#55FFFF"
    case brightRed = "#FF5555"
    case brightMagenta = "#FF55FF"
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
}
