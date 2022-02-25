import Foundation

public enum VolumeTeaspoonUserUnit: Int16, VolumeUserUnit, CaseIterable {
    case teaspoonMetric = 300
    case teaspoonUS

    public var ml: Double {
        switch self {
        case .teaspoonMetric:
            return 5
        case .teaspoonUS:
            return 4.93
        }
    }
    
    public var description: String {
        switch self {
        case .teaspoonMetric:
            return "Metric"
        case .teaspoonUS:
            return "US Customary"
        }
    }
    
    public var regex: String { #"^(ts|tea)"# }
    public var volumeUnit: VolumeUnit { .teaspoon }
}
