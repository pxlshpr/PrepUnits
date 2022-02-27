import Foundation

enum WeightUnit: Int16, CaseIterable {

    case g = 1
    case kg
    case oz
    case lb
    case mg
    
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
