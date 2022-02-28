import Foundation

public protocol Unit {
    var description: String { get }
    func description(for value: Double) -> String
    func description(isPlural: Bool) -> String
}

public extension Unit {
    func description(for value: Double) -> String {
        description(isPlural: value > 1)
    }

    func description(isPlural: Bool = false) -> String {
        isPlural ? description.plural : description
    }    
}
