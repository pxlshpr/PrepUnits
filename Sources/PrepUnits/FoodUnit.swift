import Foundation

public enum FoodUnit: Int16, CaseIterable {
    case g = 1
    case mL
    case serving
}

public extension FoodUnit {
    var description: String {
        switch self {
        case .g:
            return "g"
        case .mL:
            return "mL"
        case .serving:
            return "serving"
        }
    }
    
    func pluralizedDescription(for value: Double) -> String {
        switch self {
        case .g, .mL:
            return description
        case .serving:
            return "\(description)\(value > 1 ? "s" : "")"
        }
    }

    init?(_ nutrientsString: String) {
        switch nutrientsString {
        case "g":
            self = .g
        case "mL":
            self = .mL
        case "serving":
            self = .serving
        default:
            return nil
        }
    }
    
    var sizeUnit: SizeUnit {
        switch self {
        case .g:
            return SizeUnit.g
        case .mL:
            return SizeUnit.mL
        case .serving:
            return SizeUnit.serving
        }
    }
}
