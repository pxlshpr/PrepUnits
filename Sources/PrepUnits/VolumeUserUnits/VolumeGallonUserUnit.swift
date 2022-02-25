import Foundation

enum VolumeGallonUserUnit: Int16, VolumeUserUnit, CaseIterable {
    case gallonUSLiquid = 1
    case gallonUSDry
    case gallonImperial
    
    var ml: Double {
        switch self {
        case .gallonUSLiquid:
            return 3785.41
        case .gallonUSDry:
            return 4404.88
        case .gallonImperial:
            return 4546.09
        }
    }
    
    var description: String {
        switch self {
        case .gallonUSLiquid:
            return "US Liquid"
        case .gallonUSDry:
            return "US Dry"
        case .gallonImperial:
            return "Imperial"
        }
    }
    
    var regex: String { #"^g"# }
    
    var volumeUnit: VolumeUnit { .gallon }
}
