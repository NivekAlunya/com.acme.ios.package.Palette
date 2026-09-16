//
//  UIColor+extensions.swift
//  Palette
//
//  Created by Kevin Launay on 20/10/2025.
//

import UIKit

public extension UIColor {
    
    /// Extracts red, green, blue, and alpha components reliably across all color spaces (including grayscale and extended sRGB).
    private func getRGBComponents() -> (red: CGFloat, green: CGFloat, blue: CGFloat, alpha: CGFloat) {
        var red: CGFloat = 0
        var green: CGFloat = 0
        var blue: CGFloat = 0
        var alpha: CGFloat = 0
        
        if getRed(&red, green: &green, blue: &blue, alpha: &alpha) {
            return (red, green, blue, alpha)
        }
        
        var white: CGFloat = 0
        if getWhite(&white, alpha: &alpha) {
            return (white, white, white, alpha)
        }
        
        // Fallback: convert to device RGB colorspace
        if let rgbColor = cgColor.converted(to: CGColorSpaceCreateDeviceRGB(), intent: .defaultIntent, options: nil),
           let components = rgbColor.components, components.count >= 3 {
            return (components[0], components[1], components[2], rgbColor.alpha)
        }
        
        return (0, 0, 0, 1)
    }
    
    /// Calculates the relative luminance of the color based on the WCAG 2.1 specification.
    /// Returns a value between 0.0 (darkest black) and 1.0 (lightest white).
    var relativeLuminance: CGFloat {
        let (red, green, blue, _) = getRGBComponents()
        
        // Apply sRGB gamma correction
        func adjustComponent(_ component: CGFloat) -> CGFloat {
            if component <= 0.03928 {
                return component / 12.92
            } else {
                return pow((component + 0.055) / 1.055, 2.4)
            }
        }
        
        let r = adjustComponent(red)
        let g = adjustComponent(green)
        let b = adjustComponent(blue)
        
        return 0.2126 * r + 0.7152 * g + 0.0722 * b
    }
    
    /// Calculates the WCAG contrast ratio between this color and another color.
    /// - Parameter color: The color to compare against.
    /// - Returns: The contrast ratio ranging from 1.0 (no contrast) to 21.0 (maximum contrast).
    func contrastRatio(with color: UIColor) -> CGFloat {
        let luminance1 = self.relativeLuminance
        let luminance2 = color.relativeLuminance
        
        let lighter = max(luminance1, luminance2)
        let darker = min(luminance1, luminance2)
        
        return (lighter + 0.05) / (darker + 0.05)
    }
    
    /// Checks if the contrast ratio meets the WCAG AA standard (4.5:1 for normal body text).
    /// - Parameter color: The color to compare against.
    /// - Returns: `true` if contrast is at least 4.5:1; `false` otherwise.
    func meetsWCAG_AA(with color: UIColor) -> Bool {
        return contrastRatio(with: color) >= 4.5
    }
    
    /// Checks if the contrast ratio meets the WCAG AAA standard (7.0:1 for normal text).
    /// - Parameter color: The color to compare against.
    /// - Returns: `true` if contrast is at least 7.0:1; `false` otherwise.
    func meetsWCAG_AAA(with color: UIColor) -> Bool {
        return contrastRatio(with: color) >= 7.0
    }
    
    /// Determines if the color is considered bright (relative luminance > 0.5).
    var isBright: Bool {
        return relativeLuminance > 0.5
    }
    
    /// Determines if the color is considered dark (relative luminance <= 0.5).
    var isDark: Bool {
        return relativeLuminance <= 0.5
    }
    
    /// Calculates the perceptual color difference using the CIE76 formula.
    /// Returns the Euclidean distance in CIELAB color space.
    /// - Parameter color: The color to compare against.
    /// - Returns: The color difference (0 means identical; higher values indicate greater perceptual difference).
    func colorDifference(with color: UIColor) -> CGFloat {
        let lab1 = self.toLAB()
        let lab2 = color.toLAB()
        
        let deltaL = lab1.L - lab2.L
        let deltaA = lab1.a - lab2.a
        let deltaB = lab1.b - lab2.b
        
        return sqrt(deltaL * deltaL + deltaA * deltaA + deltaB * deltaB)
    }
    
    /// Converts RGB color to CIELAB color space coordinates.
    private func toLAB() -> (L: CGFloat, a: CGFloat, b: CGFloat) {
        let (red, green, blue, _) = getRGBComponents()
        
        func pivotRGB(_ n: CGFloat) -> CGFloat {
            return n > 0.04045 ? pow((n + 0.055) / 1.055, 2.4) : n / 12.92
        }
        
        let r = pivotRGB(red) * 100
        let g = pivotRGB(green) * 100
        let b = pivotRGB(blue) * 100
        
        // Using D65 illuminant
        let x = (r * 0.4124 + g * 0.3576 + b * 0.1805) / 95.047
        let y = (r * 0.2126 + g * 0.7152 + b * 0.0722) / 100.000
        let z = (r * 0.0193 + g * 0.1192 + b * 0.9505) / 108.883
        
        func pivotXYZ(_ n: CGFloat) -> CGFloat {
            return n > 0.008856 ? pow(n, 1.0/3.0) : (7.787 * n) + (16.0 / 116.0)
        }
        
        let fx = pivotXYZ(x)
        let fy = pivotXYZ(y)
        let fz = pivotXYZ(z)
        
        let L = max(0, 116 * fy - 16)
        let a = 500 * (fx - fy)
        let bVal = 200 * (fy - fz)
        
        return (L, a, bVal)
    }
}
