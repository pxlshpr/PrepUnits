import Foundation

public enum EnergyUnit: Int16, CaseIterable {
    case kcal = 1
    case kJ
}

extension EnergyUnit: Unit {
    public var description: String {
        switch self {
        case .kcal:
            return "kcal"
        case .kJ:
            return "kJ"
        }
    }
    
    public func title(isPlural: Bool) -> String {
        description
    }
}
