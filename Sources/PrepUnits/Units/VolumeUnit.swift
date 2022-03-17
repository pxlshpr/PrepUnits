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
    case liter
}

extension VolumeUnit: PrepUnit {
    public var description: String {
        switch self {
        case .gallon:
            return "Gallon"
        case .quart:
            return "Quart"
        case .pint:
            return "Pint"
        case .cup:
            return "Cup"
        case .fluidOunce:
            return "Fluid Ounce"
        case .tablespoon:
            return "Tablespoon"
        case .teaspoon:
            return "Teaspoon"
        case .mL:
            return "Millilitre"
        case .liter:
            return "Litre"
        }
    }
    
    public var shortDescription: String {
        switch self {
        case .gallon:
            return "gal"
        case .quart:
            return "qt"
        case .pint:
            return "pt"
        case .cup:
            return "cup"
        case .fluidOunce:
            return "fl oz"
        case .tablespoon:
            return "tbsp"
        case .teaspoon:
            return "tsp"
        case .mL:
            return "mL"
        case .liter:
            return "L"
        }
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
        case .liter:
            return #"^l"#
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
        case 351:
            return VolumeLiterUserUnit.liter
        default:
            return nil
        }
    }
}
