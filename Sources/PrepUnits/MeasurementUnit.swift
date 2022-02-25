import Foundation

public enum MeasurementUnit: CaseIterable {
    case g
    case mL
}

public extension MeasurementUnit {

    var description: String {
        switch self {
        case .g:
            return "g"
        case .mL:
            return "mL"
        }
    }

    var opposite: MeasurementUnit {
        self == .g ? .mL : .g
    }
    
    var sizeUnit: SizeUnit {
        switch self {
        case .g:
            return SizeUnit.g
        case .mL:
            return SizeUnit.mL
        }
    }
    
    var foodUnit: FoodUnit {
        switch self {
        case .g:
            return FoodUnit.g
        case .mL:
            return FoodUnit.mL
        }
    }
}
