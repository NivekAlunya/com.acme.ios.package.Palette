//
//  File.swift
//  Palette
//
//  Created by Kevin Launay on 20/10/2025.
//

import UIKit

public enum TileColor: String, Colorable {
    case lime = "#A4C400"
    case green = "#60A917"
    case emerald = "#008A00"
    case teal = "#00ABA9"
    case cyan = "#1BA1E2"
    case cobalt = "#0050EF"
    case indigo = "#6A00FF"
    case violet = "#AA00FF"
    case pink = "#F472D0"
    case magenta = "#D80073"
    case crimson = "#A20025"
    case red = "#E51400"
    case orange = "#FA6800"
    case amber = "#F0A30A"
    case yellow = "#E3C800"
    case brown = "#825A2C"
    case olive = "#6D8764"
    case steel = "#647687"
    case mauve = "#76608A"
    case taupe = "#87794E"
    
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
