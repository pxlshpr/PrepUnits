import SwiftUI

public enum Macro: String, CaseIterable {
    case carb = "Carbohydrate"
    case fat = "Fat"
    case protein = "Protein"
    
    var multiplier: Double {
        switch self {
        case .carb: return 4
        case .fat: return 9
        case .protein: return 4
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

