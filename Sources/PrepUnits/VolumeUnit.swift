import SwiftSugar

public enum VolumeUnit: Int16, CaseIterable {

    case gallon = 1
    case quart
    case pint
    case cup
    case fluidOunce
    case tablespoon
    case teaspoon
    case mL
    
    public var description: String {
        switch self {
        case .gallon:
            return "gallon"
        case .quart:
            return "quart"
        case .pint:
            return "pint"
        case .cup:
            return "cup"
        case .fluidOunce:
            return "fluid ounce"
        case .tablespoon:
            return "tablespoon"
        case .teaspoon:
            return "teaspoon"
        case .mL:
            return "mL"
        }
    }
    
    public func description(isPlural: Bool = false) -> String {
        isPlural ? description.plural : description
    }
    
    public var regex: String {
        switch self {
        case .gallon:
            return #"^g"#
        case .quart:
            return #"^q"#
        case .pint:
            return #"^p"#
        case .cup:
            return #"^c"#
        case .fluidOunce:
            return #"^(fl|oz)"#
        case .tablespoon:
            return #"^(tb|tab)"#
        case .teaspoon:
            return #"^(ts|tea)"#
        case .mL:
            return #"^(ml|mil)"#
        }
    }
    
    public init?(string: String) {
        for unit in Self.allCases {
            if string.matchesRegex(unit.regex) {
                self = unit
                return
            }
        }
        return nil
    }
    
    public static func volumeUserUnit(for rawValue: Int16) -> VolumeUserUnit? {
        switch rawValue {
        case 1..<50:
            return VolumeGallonUserUnit(rawValue: rawValue)
        case 50..<100:
            return VolumeQuartUserUnit(rawValue: rawValue)
        case 100..<150:
            return VolumePintUserUnit(rawValue: rawValue)
        case 150..<200:
            return VolumeCupUserUnit(rawValue: rawValue)
        case 200..<250:
            return VolumeFluidOunceUserUnit(rawValue: rawValue)
        case 250..<300:
            return VolumeTablespoonUserUnit(rawValue: rawValue)
        case 300..<350:
            return VolumeTeaspoonUserUnit(rawValue: rawValue)
        case 350:
            return VolumeMilliliterUserUnit.ml
        default:
            return nil
        }
    }
}
