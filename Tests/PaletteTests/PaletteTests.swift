//
//  PaletteTests.swift
//  PaletteTests
//
//  Created by Kevin Launay on 20/10/2025.
//

import Testing
import UIKit
import SwiftUI
@testable import Palette

@Suite("Palette and UIColor Extension Tests")
struct PaletteTests {

    @Test("Relative luminance calculates correctly for grayscale and RGB colors")
    func testRelativeLuminance() {
        let white = UIColor.white
        let black = UIColor.black
        let gray = UIColor(white: 0.5, alpha: 1.0)
        let red = UIColor.red

        // White must be 1.0 (verifies fix for grayscale getRed failure)
        #expect(abs(white.relativeLuminance - 1.0) < 0.01)
        #expect(abs(black.relativeLuminance - 0.0) < 0.01)
        #expect(gray.relativeLuminance > 0.15 && gray.relativeLuminance < 0.30)
        #expect(red.relativeLuminance > 0.20 && red.relativeLuminance < 0.25)
    }

    @Test("Contrast ratio and WCAG standards compliance")
    func testContrastRatio() {
        let white = UIColor.white
        let black = UIColor.black

        let maxContrast = white.contrastRatio(with: black)
        #expect(abs(maxContrast - 21.0) < 0.1)

        let minContrast = white.contrastRatio(with: white)
        #expect(abs(minContrast - 1.0) < 0.01)

        #expect(black.meetsWCAG_AA(with: white) == true)
        #expect(black.meetsWCAG_AAA(with: white) == true)

        let lightGray = UIColor(white: 0.9, alpha: 1.0)
        #expect(white.meetsWCAG_AA(with: lightGray) == false)
    }

    @Test("Brightness classification")
    func testBrightness() {
        #expect(UIColor.white.isBright == true)
        #expect(UIColor.white.isDark == false)

        #expect(UIColor.black.isBright == false)
        #expect(UIColor.black.isDark == true)
    }

    @Test("Perceptual color difference via CIE76")
    func testColorDifference() {
        let red = UIColor.red
        let blue = UIColor.blue

        #expect(red.colorDifference(with: red) == 0.0)
        #expect(red.colorDifference(with: blue) > 50.0)
    }

    @Test("ColorHelper hex parsing")
    func testColorHelperHexParsing() {
        let redColor = ColorHelper.hexcolor("#FF0000")
        var r: CGFloat = 0, g: CGFloat = 0, b: CGFloat = 0, a: CGFloat = 0
        redColor.getRed(&r, green: &g, blue: &b, alpha: &a)
        #expect(r == 1.0)
        #expect(g == 0.0)
        #expect(b == 0.0)

        let invalidColor = ColorHelper.hexcolor("XYZ")
        #expect(invalidColor == UIColor.gray)
    }

    @Test("CGA palette and sub-palettes")
    func testCGAPalette() {
        #expect(CGA.allCases.count == 16)
        #expect(CGA.p0.count == 4)
        #expect(CGA.p0hi.count == 4)
        #expect(CGA.p1.count == 4)
        #expect(CGA.p1hi.count == 4)

        #expect(CGA.black.hex == "#000000")
        #expect(CGA.white.hex == "#FFFFFF")

        let swiftColor = CGA.cyan.swiftUIColor
        #expect(swiftColor == Color(uiColor: CGA.cyan.color))
    }
}
