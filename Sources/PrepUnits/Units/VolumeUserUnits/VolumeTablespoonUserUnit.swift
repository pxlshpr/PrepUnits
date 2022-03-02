import Foundation

public enum VolumeTablespoonUserUnit: Int16, VolumeUserUnit, PrepUnit, CaseIterable {
    case tablespoonMetric = 250
    case tablespoonUS
    case tablespoonAustralia

    public var ml: Double {
        switch self {
        case .tablespoonMetric:
            return 15
        case .tablespoonUS:
            return 14.79
        case .tablespoonAustralia:
            return 20
        }
    }
    
    public var description: String {
        switch self {
        case .tablespoonMetric:
            return "Metric"
        case .tablespoonUS:
            return "US"
        case .tablespoonAustralia:
            return "Australia"
        }
    }
    public var regex: String { #"^(tb|tab)"# }
    public var volumeUnit: VolumeUnit { .tablespoon }
}
