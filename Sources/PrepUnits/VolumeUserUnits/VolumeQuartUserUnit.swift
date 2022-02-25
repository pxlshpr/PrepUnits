import Foundation

enum VolumeQuartUserUnit: Int16, VolumeUserUnit, CaseIterable {
    case quartUSLiquid = 50
    case quartUSDry
    case quartImperial

    var ml: Double {
        switch self {
        case .quartUSLiquid:
            return 946.35
        case .quartUSDry:
            return 1101.22
        case .quartImperial:
            return 1136.52
        }
    }
    
    var description: String {
        switch self {
        case .quartUSLiquid:
            return "US Liquid"
        case .quartUSDry:
            return "US Dry"
        case .quartImperial:
            return "Imperial"
        }
    }
    var regex: String { #"q"# }
    var volumeUnit: VolumeUnit { .quart }
}
