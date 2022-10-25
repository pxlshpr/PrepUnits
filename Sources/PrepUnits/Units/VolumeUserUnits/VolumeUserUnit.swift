import Foundation

public protocol VolumeUserUnit: PrepUnit {
    var rawValue: Int16 { get }
    var ml: Double { get }
    var regex: String { get }
    var volumeUnit: VolumeUnit { get }
}

extension VolumeUserUnit {
    public var shortDescription: String {
        volumeUnit.shortDescription
    }
}
