import Foundation

public enum WeightUnit: Int16, CaseIterable {
    case g = 1
    case kg
    case oz
    case lb
    case mg
}

public extension WeightUnit {
    var regex: String {
        switch self {
        case .g:
            return #"^(g raw weight|gramm|gram|gr|gm|g)"#
        case .kg:
            return #"^kg"#
        case .mg:
            return #"^mg"#
        case .oz:
            return #"^(wt. oz|ounce|oz)"#
        case .lb:
            return #"(pound|lb)"#
        }
    }
}

extension WeightUnit: PrepUnit {
    public var description: String {
        switch self {
        case .g:
            return "Gram"
        case .kg:
            return "Kilogram"
        case .oz:
            return "Ounce"
        case .lb:
            return "Pound"
        case .mg:
            return "Milligram"
        }
    }
    
    public var shortDescription: String {
        switch self {
        case .g:
            return "g"
        case .kg:
            return "kg"
        case .oz:
            return "oz"
        case .lb:
            return "lb"
        case .mg:
            return "mg"
        }
    }
}