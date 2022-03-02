import Foundation

public protocol Unit {
    var description: String { get }
    func description(for value: Double) -> String
    func description(isPlural: Bool) -> String
    
    var shortDescription: String { get }
    func shortDescription(for value: Double) -> String
    func shortDescription(isPlural: Bool) -> String
}

public extension Unit {
    
    func description(for value: Double) -> String {
        description(isPlural: value > 1)
    }

    func description(isPlural: Bool = false) -> String {
        isPlural ? description.plural : description
    }

    func shortDescription(for value: Double) -> String {
        shortDescription(isPlural: value > 1)
    }

    func shortDescription(isPlural: Bool = false) -> String {
        isPlural ? shortDescription.plural : shortDescription
    }
}
