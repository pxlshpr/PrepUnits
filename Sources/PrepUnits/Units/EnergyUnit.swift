import Foundation

public enum EnergyUnit: Int16, CaseIterable {
    case kcal = 1
    case kJ
}

extension EnergyUnit: PrepUnit {
    public var description: String {
        switch self {
        case .kcal:
            return "Kilocalorie"
        case .kJ:
            return "Kilojule"
        }
    }
    
    public var shortDescription: String {
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
