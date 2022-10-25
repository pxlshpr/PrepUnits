import Foundation

public enum UnitType: String, Codable, CaseIterable {
    case weight
    case volume
    case serving
    case size
}

extension UnitType: PrepUnit {
    
    public var description: String {
        switch self {
        case .weight:
            return "Weight"
        case .volume:
            return "Volume"
        case .serving:
            return "Serving"
        case .size:
            return "Size"
        }
    }
    
    public var shortDescription: String {
        description
    }
}

public extension UnitType {
    var isMeasurement: Bool {
        self == .weight || self == .volume
    }
    
    var oppositeMeasurement: UnitType? {
        if self == .weight { return .volume }
        if self == .volume { return .weight }
        return nil
    }

    init?(_ nutrientsString: String) {
        switch nutrientsString {
        case "g":
            self = .weight
        case "mL":
            self = .volume
        case "serving":
            self = .serving
        default:
            return nil
        }
    }    
}

