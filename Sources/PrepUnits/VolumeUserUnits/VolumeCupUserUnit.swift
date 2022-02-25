import Foundation

public enum VolumeCupUserUnit: Int16, VolumeUserUnit, CaseIterable {
    case cupUSLegal = 150
    case cupUSCustomary
    case cupImperial
    case cupMetric
    case cupCanada
    case cupLatinAmerica
    case cupJapanTraditional
    case cupJapanModern
    case cupRussianProper
    case cupRussianGlassRegular
    case cupRussianGlassLarge

    public var ml: Double {
        switch self {
        case .cupUSLegal:
            return 240
        case .cupUSCustomary:
            return 236.59
        case .cupImperial:
            return 284.13
        case .cupMetric:
            return 250
        case .cupCanada:
            return 227.30
        case .cupLatinAmerica:
            return 200
        case .cupJapanTraditional:
            return 180.39
        case .cupJapanModern:
            return 200
        case .cupRussianProper:
            return 100
        case .cupRussianGlassRegular:
            return 200
        case .cupRussianGlassLarge:
            return 250
        }
    }
    
    public var description: String {
        switch self {
        case .cupUSLegal:
            return "US Legal"
        case .cupUSCustomary:
            return "US Customary"
        case .cupImperial:
            return "Imperial"
        case .cupMetric:
            return "Metric"
        case .cupCanada:
            return "Canada"
        case .cupLatinAmerica:
            return "Latin America"
        case .cupJapanTraditional:
            return "Japan Traditional"
        case .cupJapanModern:
            return "Japan Modern"
        case .cupRussianProper:
            return "Russian Cup Proper"
        case .cupRussianGlassRegular:
            return "Russian Glass (Regular)"
        case .cupRussianGlassLarge:
            return "Russian Glass (Large)"
        }
    }
    public var regex: String { #"c"# }
    public var volumeUnit: VolumeUnit { .cup }
}
