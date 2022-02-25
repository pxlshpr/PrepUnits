import Foundation

enum VolumeTablespoonUserUnit: Int16, VolumeUserUnit, CaseIterable {
    case tablespoonMetric = 250
    case tablespoonUS
    case tablespoonAustralia

    var ml: Double {
        switch self {
        case .tablespoonMetric:
            return 15
        case .tablespoonUS:
            return 14.79
        case .tablespoonAustralia:
            return 20
        }
    }
    
    var description: String {
        switch self {
        case .tablespoonMetric:
            return "Metric"
        case .tablespoonUS:
            return "US"
        case .tablespoonAustralia:
            return "Australia"
        }
    }
    var regex: String { #"^(tb|tab)"# }
    var volumeUnit: VolumeUnit { .tablespoon }
}
