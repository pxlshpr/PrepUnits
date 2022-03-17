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

public enum VolumeLiterUserUnit: Int16, VolumeUserUnit, PrepUnit, CaseIterable {
    case l = 351

    public var ml: Double {
        switch self {
        case .l:
            return 1000
        }
    }
    
    public var description: String { "liter" }
    public var regex: String { #"^l"# }
    public var volumeUnit: VolumeUnit { .liter }
}
