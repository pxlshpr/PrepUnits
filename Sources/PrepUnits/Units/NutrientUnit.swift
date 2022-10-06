import Foundation

public enum NutrientUnit: Int16, CaseIterable {
    case g = 1
    case mg
    case mgAT /// alpha-tocopherol
    case mgNE
    case mcg = 50
    case mcgDFE
    case mcgRAE
    case IU = 100
    case p
}

extension NutrientUnit: PrepUnit {
    public var description: String {
        switch self {
        case .g:
            return "grams"
        case .mg:
            return "milligrams"
        case .mgAT:
            return "milligrams of alpha-tocopherol"
        case .mgNE:
            return "milligrams of niacin equivalents"
        case .mcg:
            return "micrograms"
        case .mcgDFE:
            return "micrograms of dietary folate equivalents"
        case .mcgRAE:
            return "micrograms of retinol activity equivalents"
        case .IU:
            return "international units"
        case .p:
            return "percentage"
        }
    }
    
    public var shortDescription: String {
        switch self {
        case .g:
            return "g"
        case .mg:
            return "mg"
        case .mgAT:
            return "mg"
        case .mgNE:
            return "mg NE"
        case .mcg:
            return "mcg"
        case .mcgDFE:
            return "mcg DFE"
        case .mcgRAE:
            return "mcg RAE"
        case .IU:
            return "IU"
        case .p:
            return "%"
        }
    }
    
    public func title(isPlural: Bool) -> String {
        description
    }
}
