import Foundation

public protocol VolumeUserUnit: Unit {
    var rawValue: Int16 { get }
    var ml: Double { get }
    var regex: String { get }
    var volumeUnit: VolumeUnit { get }
}
