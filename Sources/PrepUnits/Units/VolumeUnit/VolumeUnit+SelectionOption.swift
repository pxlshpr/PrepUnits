import SwiftUISugar

extension VolumeUnit: SelectionOption {
    public var optionId: String { description }
    
    public func title(isPlural: Bool) -> String? {
        shortDescription(isPlural: isPlural)
    }

    public func menuTitle(isPlural: Bool) -> String? {
        description(isPlural: isPlural).lowercased()
    }
}
