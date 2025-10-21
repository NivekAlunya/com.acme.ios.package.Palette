// The Swift Programming Language
// https://docs.swift.org/swift-book

import UIKit

public protocol Colorable: Sendable, Hashable, CaseIterable {
    var color : UIColor { get }
    var hex : String { get }
}

public extension Colorable {
    
    var color: UIColor {
        return ColorHelper.hexcolor(self.hex)
    }
 
    func hash(into hasher: inout Hasher) {
        hasher.combine(hex)
    }
}

public class ColorHelper {
    static func hexcolor(_ hex:String) -> UIColor {
        var cString:String = hex.trimmingCharacters(in: .whitespacesAndNewlines).uppercased()
        
        if (cString.hasPrefix("#")) {
            cString.remove(at: cString.startIndex)
        }
        
        if ((cString.count) != 6) {
            return UIColor.gray
        }
        
        var rgbValue:UInt64 = 0
        Scanner(string: cString).scanHexInt64(&rgbValue)
        
        return UIColor(
            red: CGFloat((rgbValue & 0xFF0000) >> 16) / 255.0,
            green: CGFloat((rgbValue & 0x00FF00) >> 8) / 255.0,
            blue: CGFloat(rgbValue & 0x0000FF) / 255.0,
            alpha: CGFloat(1.0)
        )
    }
}
