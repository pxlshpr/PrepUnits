import Foundation

public enum VolumeGallonUserUnit: Int16, VolumeUserUnit, Unit, CaseIterable {
    case gallonUSLiquid = 1
    case gallonUSDry
    case gallonImperial
    
    public var ml: Double {
        switch self {
        case .gallonUSLiquid:
            return 3785.41
        case .gallonUSDry:
            return 4404.88
        case .gallonImperial:
            return 4546.09
        }
    }
    
    public var description: String {
        switch self {
        case .gallonUSLiquid:
            return "US Liquid"
        case .gallonUSDry:
            return "US Dry"
        case .gallonImperial:
            return "Imperial"
        }
    }
    
    public var regex: String { #"^g"# }
    public var volumeUnit: VolumeUnit { .gallon }
}
