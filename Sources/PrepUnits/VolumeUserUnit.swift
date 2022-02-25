import Foundation

public protocol VolumeUserUnit {
    var rawValue: Int16 { get }
    var ml: Double { get }
    var description: String { get }
    var regex: String { get }
    var volumeUnit: VolumeUnit { get }
}
