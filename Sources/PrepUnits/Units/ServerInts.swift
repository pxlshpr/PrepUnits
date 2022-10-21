import Foundation

public extension VolumeUnit {
    var serverInt: Int16? {
        //TODO: Choose these based on user settings
        switch self {
        case .gallon:
            return VolumeGallonUserUnit.gallonUSLiquid.rawValue
        case .quart:
            return VolumeQuartUserUnit.quartUSLiquid.rawValue
        case .pint:
            return VolumePintUserUnit.pintUSLiquid.rawValue
        case .cup:
            return VolumeCupUserUnit.cupUSLegal.rawValue
        case .fluidOunce:
            return VolumeFluidOunceUserUnit.fluidOunceUSNutritionLabeling.rawValue
        case .tablespoon:
            return VolumeTablespoonUserUnit.tablespoonUS.rawValue
        case .teaspoon:
            return VolumeTeaspoonUserUnit.teaspoonUS.rawValue
        case .mL:
            return VolumeMilliliterUserUnit.ml.rawValue
        case .liter:
            return VolumeLiterUserUnit.liter.rawValue
        }
    }
}

public extension WeightUnit {
    var serverInt: Int16 {
        rawValue
    }
}

public extension FormUnit {
    var sizeUnitId: UUID? {
        guard case .size(let size, _) = self else { return nil }
        return size.id
    }
    
    var sizeUnitVolumePrefixUnitInt: Int16? {
        guard case .size(_, let volumeUnit) = self else { return nil }
        return volumeUnit?.serverInt
    }
    
    var volumeUnitServerInt: Int16? {
        guard case .volume(let volumeUnit) = self else { return nil }
        return volumeUnit.serverInt
    }

    var weightUnitServerInt: Int16? {
        guard case .weight(let weightUnit) = self else { return nil }
        return weightUnit.serverInt
    }
    
    var serverInt: Int16 {
        switch self {
        case .weight:   return 1
        case .volume:   return 2
        case .size:     return 3
        case .serving:  return 4
        }
    }
}
