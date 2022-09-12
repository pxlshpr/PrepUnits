import SwiftUISugar

extension UnitType: SelectionOption {
    public var optionId: String {
        self.description
    }
    
    public func title(isPlural: Bool) -> String? {
        switch self {
        case .weight, .volume:
            return description
        case .serving:
            return isPlural ? "servings" : "serving"
        case .size:
            return isPlural ? "sizes" : "size"
        }
    }
}
