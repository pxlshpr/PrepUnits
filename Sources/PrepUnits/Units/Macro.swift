#if canImport(SwiftUI)
import SwiftUI
import SwiftSugar

public enum Macro: String, CaseIterable, Codable {
    case carb = "Carbohydrate"
    case fat = "Fat"
    case protein = "Protein"
}

public extension Macro {
    
    var multiplier: Double {
        switch self {
        case .carb: return 4
        case .fat: return 9
        case .protein: return 4
        }
    }
    
    var initial: String {
        switch self {
        case .carb: return "C"
        case .fat: return "F"
        case .protein: return "P"
        }
    }
}

extension Macro: CustomStringConvertible {
    public var description: String {
        rawValue
    }
}

#if canImport(UIKit)
public extension Macro {
    func textColor(for colorScheme: ColorScheme) -> Color {
        switch self {
        case .carb:
            return colorScheme == .light
            ? Color(hex: "CA7700")
            : Color(hex: "FFCD34")
        case .fat:
            return colorScheme == .light
            ? Color(hex: "B900FF")
            : Color(hex: "E742FF")
        case .protein:
            return colorScheme == .light
            ? Color(hex: "3D969A")
            : Color(hex: "9AFBFF")
        }
    }
    
    //TODO: Document these so we can use them easily
    var color: Color {
        Color(uiColor)
    }
    
    var labelColor: Color {
        Color(labelUiColor)
    }

    var nutrientMealBackgroundColor: Color {
        Color(UIColor(named: "Nutrient\(rawValue)Bg") ?? .label)
    }

    var nutrientMealUnitColor: Color {
        Color(UIColor(named: "Nutrient\(rawValue)Unit") ?? .label)
    }

    var uiColor: UIColor {
        UIColor(named: rawValue) ?? .label
    }
    
    var labelUiColor: UIColor {
        UIColor(named: "\(rawValue)-Label") ?? .label
    }
}
#endif
