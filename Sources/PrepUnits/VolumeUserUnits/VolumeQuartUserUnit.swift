import Foundation

public enum VolumeQuartUserUnit: Int16, VolumeUserUnit, CaseIterable {
    case quartUSLiquid = 50
    case quartUSDry
    case quartImperial

    public var ml: Double {
        switch self {
        case .quartUSLiquid:
            return 946.35
        case .quartUSDry:
            return 1101.22
        case .quartImperial:
            return 1136.52
        }
    }
    
    public var description: String {
        switch self {
        case .quartUSLiquid:
            return "US Liquid"
        case .quartUSDry:
            return "US Dry"
        case .quartImperial:
            return "Imperial"
        }
    }
    public var regex: String { #"q"# }
    public var volumeUnit: VolumeUnit { .quart }
}
