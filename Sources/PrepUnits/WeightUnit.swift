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

extension WeightUnit: Unit {
    public var description: String {
        switch self {
        case .g:
            return "gram"
        case .kg:
            return "kilogram"
        case .oz:
            return "ounce"
        case .lb:
            return "pound"
        case .mg:
            return "milligram"
        }
    }
}
