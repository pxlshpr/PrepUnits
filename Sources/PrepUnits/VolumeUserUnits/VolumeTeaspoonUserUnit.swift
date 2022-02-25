import Foundation

enum VolumeTeaspoonUserUnit: Int16, VolumeUserUnit, CaseIterable {
    case teaspoonMetric = 300
    case teaspoonUS

    var ml: Double {
        switch self {
        case .teaspoonMetric:
            return 5
        case .teaspoonUS:
            return 4.93
        }
    }
    
    var description: String {
        switch self {
        case .teaspoonMetric:
            return "Metric"
        case .teaspoonUS:
            return "US Customary"
        }
    }
    
    var regex: String { #"^(ts|tea)"# }
    var volumeUnit: VolumeUnit { .teaspoon }
}
