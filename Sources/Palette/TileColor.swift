//
//  File.swift
//  Palette
//
//  Created by Kevin Launay on 20/10/2025.
//

import UIKit

public enum TileColor: String, Colorable {
    // 🔴 Reds
    case red = "#E51400"
    case crimson = "#A20025"
    case magenta = "#D80073"

    // 🟠 Oranges
    case orange = "#FA6800"
    case amber = "#F0A30A"

    // 🟡 Yellows
    case yellow = "#E3C800"
    case lime = "#A4C400"

    // 🟢 Greens
    case green = "#60A917"
    case emerald = "#008A00"
    case olive = "#6D8764"

    // 🩵 Teals & Cyans
    case teal = "#00ABA9"
    case cyan = "#1BA1E2"

    // 🔵 Blues
    case cobalt = "#0050EF"

    // 🟣 Indigo / Violet / Pink
    case indigo = "#6A00FF"
    case violet = "#AA00FF"
    case pink = "#F472D0"

    // ⚫ Neutrals
    case mauve = "#76608A"
    case brown = "#825A2C"
    case taupe = "#87794E"
    case steel = "#647687"

    public var color: UIColor {
        return ColorHelper.hexcolor(self.rawValue)
    }

    public var hex: String {
        return self.rawValue
    }
}
