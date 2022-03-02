import Foundation

public enum VolumeMilliliterUserUnit: Int16, VolumeUserUnit, PrepUnit, CaseIterable {
    case ml = 350

    public var ml: Double {
        switch self {
        case .ml:
            return 1
        }
    }
    
    public var description: String { "milliliter" }
    public var regex: String { #"^(ml|mil)"# }
    public var volumeUnit: VolumeUnit { .mL }
}
