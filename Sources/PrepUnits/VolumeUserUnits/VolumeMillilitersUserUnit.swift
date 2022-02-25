import Foundation

enum VolumeMilliliterUserUnit: Int16, VolumeUserUnit, CaseIterable {
    case ml = 350

    var ml: Double {
        switch self {
        case .ml:
            return 1
        }
    }
    
    var description: String { "milliliter" }
    var regex: String { #"^(ml|mil)"# }
    var volumeUnit: VolumeUnit { .mL }
}
