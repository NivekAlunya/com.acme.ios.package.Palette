//
//  Palette.swift
//  Palette
//
//  Created by Kevin Launay on 20/10/2025.
//

import UIKit
import SwiftUI

/// Protocol representing a color palette token with associated hex representation and platform colors.
public protocol Colorable: Sendable, Hashable, CaseIterable {
    /// The `UIColor` representation.
    var color: UIColor { get }
    /// The hexadecimal color string (e.g. `"#FF5500"`).
    var hex: String { get }
}

public extension Colorable {
    
    var color: UIColor {
        return ColorHelper.hexcolor(self.hex)
    }

    /// The SwiftUI `Color` representation.
    var swiftUIColor: Color {
        return Color(uiColor: color)
    }
 
    func hash(into hasher: inout Hasher) {
        hasher.combine(hex)
    }
}

/// Utility for parsing and converting hexadecimal color strings.
public final class ColorHelper: Sendable {
    /// Parses a 6-character hex color string into a `UIColor`.
    /// - Parameter hex: Hex string with or without leading `#`.
    /// - Returns: Decoded `UIColor`, or `UIColor.gray` if the string is invalid.
    public static func hexcolor(_ hex: String) -> UIColor {
        var cString: String = hex.trimmingCharacters(in: .whitespacesAndNewlines).uppercased()
        
        if cString.hasPrefix("#") {
            cString.remove(at: cString.startIndex)
        }
        
        if cString.count != 6 {
            return UIColor.gray
        }
        
        var rgbValue: UInt64 = 0
        Scanner(string: cString).scanHexInt64(&rgbValue)
        
        return UIColor(
            red: CGFloat((rgbValue & 0xFF0000) >> 16) / 255.0,
            green: CGFloat((rgbValue & 0x00FF00) >> 8) / 255.0,
            blue: CGFloat(rgbValue & 0x0000FF) / 255.0,
            alpha: CGFloat(1.0)
        )
    }
}
