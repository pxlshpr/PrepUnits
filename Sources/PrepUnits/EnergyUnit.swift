import Foundation

public enum EnergyUnit: String, CaseIterable {
    case kcal
    case kJ
}

public extension EnergyUnit {
    var description: String {
        switch self {
        case .kcal:
            return "kcal"
        case .kJ:
            return "kJ"
        }
    }
    
    func title(isPlural: Bool) -> String {
        description
    }
}
