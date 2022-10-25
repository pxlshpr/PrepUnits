import Foundation

public indirect enum FormUnit: Hashable, Codable {
    case weight(WeightUnit)
    case volume(VolumeUnit)
    case size(FormSize, VolumeUnit?)
    case serving
}

public extension FormUnit {
    var size: FormSize? {
        get {
            switch self {
            case .size(let size, _):
                return size
            default:
                return nil
            }
        }
        set {
            guard let newValue else { return }
            switch self {
            case .size(_, let volumeUnit):
                self = .size(newValue, volumeUnit)
            default:
                self = .size(newValue, nil)
            }
        }
    }
}

public extension FormUnit {
    var isServingBased: Bool {
        switch self {
        case .size(let size, _):
            return size.isServingBased
        case .serving:
            return true
        default:
            return false
        }
    }
    
    var isMeasurementBased: Bool {
        switch self {
        case .size(let size, _):
            return size.isMeasurementBased
        default:
            return unitType.isMeasurement
        }
    }
    
    var defaultVolumeUnit: VolumeUnit? {
        guard case .size(_, let volumeUnit) = self else {
            return nil
        }
        return volumeUnit
    }
    
    var isWeightBased: Bool {
        switch self {
        case .size(let size, _):
            return size.isWeightBased
        default:
            return unitType == .weight
        }
    }
    
    var isVolumeBased: Bool {
        switch self {
        case .size(let size, _):
            return size.isVolumeBased
        default:
            return unitType == .volume
        }
    }
    
    var unitType: UnitType {
        switch self {
        case .weight:
            return .weight
        case .volume:
            return .volume
        case .size:
            return .size
        case .serving:
            return .serving
        }
    }
}

extension FormUnit: CustomStringConvertible {
    public var description: String {
        switch self {
        case .weight(let weightUnit):
            return weightUnit.description
        case .volume(let volumeUnit):
            return volumeUnit.description
        case .size(let size, let volumePrefixUnit):
            return size.namePrefixed(with: volumePrefixUnit)
        case .serving:
            return "serving"
        }
    }
    
    public var shortDescription: String {
        switch self {
        case .weight(let weightUnit):
            return weightUnit.shortDescription
        case .volume(let volumeUnit):
            return volumeUnit.shortDescription
        case .size(let size, let volumePrefixUnit):
            return size.namePrefixed(with: volumePrefixUnit)
        case .serving:
            return "serving"
        }
    }
}

extension FormUnit: Equatable {
    public static func ==(lhs: FormUnit, rhs: FormUnit) -> Bool {
        switch (lhs, rhs) {
        case (.serving, .serving):
            return true
        case (.size(let lhsSize, let lhsVolumePrefixUnit), .size(let rhsSize, let rhsVolumePrefixUnit)):
            return lhsSize == rhsSize && lhsVolumePrefixUnit == rhsVolumePrefixUnit
        case (.weight(let lhsWeightUnit), .weight(let rhsWeightUnit)):
            return lhsWeightUnit == rhsWeightUnit
        case (.volume(let lhsVolumeUnit), .volume(let rhsVolumeUnit)):
            return lhsVolumeUnit == rhsVolumeUnit
        default:
            return false
        }
    }
}

