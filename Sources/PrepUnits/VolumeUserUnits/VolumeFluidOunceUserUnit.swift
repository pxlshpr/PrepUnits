import Foundation

public enum VolumeFluidOunceUserUnit: Int16, VolumeUserUnit, CaseIterable {
    case fluidOunceUSNutritionLabeling = 200
    case fluidOunceUSCustomary
    case fluidOunceImperial

    public var ml: Double {
        switch self {
        case .fluidOunceUSNutritionLabeling:
            return 30
        case .fluidOunceUSCustomary:
            return 29.57
        case .fluidOunceImperial:
            return 28.41
        }
    }
    
    public var description: String {
        switch self {
        case .fluidOunceUSNutritionLabeling:
            return "US Nutrition Labeling"
        case .fluidOunceUSCustomary:
            return "US Customary"
        case .fluidOunceImperial:
            return "Imperial"
        }
    }
    public var regex: String { #"^(fl|oz)"# }
    public var volumeUnit: VolumeUnit { .fluidOunce }
}
