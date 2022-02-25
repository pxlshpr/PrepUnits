import Foundation

public enum SizeUnit: Int16, CaseIterable {
    case g = 1
    case mL
    case serving
    case size
}

public extension SizeUnit {
    
    var isFoodUnit: Bool {
        foodUnit != nil
    }
    
    var measurementUnit: MeasurementUnit? {
        switch self {
        case .g:
            return MeasurementUnit.g
        case .mL:
            return MeasurementUnit.mL
        default:
            return nil
        }
    }
    
    var description: String {
        switch self {
        case .g:
            return "g"
        case .mL:
            return "mL"
        case .serving:
            return "serving"
        case .size:
            return "size"
        }
    }
    
    var foodUnit: FoodUnit? {
        switch self {
        case .g:
            return .g
        case .mL:
            return .mL
        case .serving:
            return .serving
        case .size:
            return nil
        }
    }
    
    var isMeasurement: Bool {
        self == .g || self == .mL
    }
}

