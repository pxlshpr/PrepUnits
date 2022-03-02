import Foundation

public enum VolumePintUserUnit: Int16, VolumeUserUnit, PrepUnit, CaseIterable {
    case pintUSLiquid = 100
    case pintUSDry
    case pintImperial
    case pintMetric
    case pintFlemishPintje
    case pintIndia
    case pintSouthAustralia
    case pintAustralia
    case pintRoyal
    case pintCanada

    public var ml: Double {
        switch self {
        case .pintUSLiquid:
            return 473.18
        case .pintUSDry:
            return 550.61
        case .pintImperial:
            return 568.26
        case .pintMetric:
            return 500
        case .pintFlemishPintje:
            return 250
        case .pintIndia:
            return 330
        case .pintSouthAustralia:
            return 425
        case .pintAustralia:
            return 570
        case .pintRoyal:
            return 952
        case .pintCanada:
            return 1136.52
        }
    }
    
    public var description: String {
        switch self {
        case .pintUSLiquid:
            return "US Liquid"
        case .pintUSDry:
            return "US Dry"
        case .pintImperial:
            return "Imperial"
        case .pintMetric:
            return "Metric"
        case .pintFlemishPintje:
            return "Flemish Pintje"
        case .pintIndia:
            return "India"
        case .pintSouthAustralia:
            return "South Australia"
        case .pintAustralia:
            return "Australia"
        case .pintRoyal:
            return "Royal"
        case .pintCanada:
            return "Canada"
        }
    }
    public var regex: String { #"p"# }
    public var volumeUnit: VolumeUnit { .pint }
}
