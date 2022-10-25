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

public extension FormUnit {
    var sizeUnitId: UUID? {
        guard case .size(let size, _) = self else { return nil }
        return size.id
    }
    
    var sizeUnitVolumePrefixUnitInt: Int16? {
        guard case .size(_, let volumeUnit) = self else { return nil }
        return volumeUnit?.serverInt
    }
    
    var volumeUnit: Int16? {
        guard case .volume(let volumeUnit) = self else { return nil }
        return volumeUnit.serverInt
    }

    var weightUnit: WeightUnit? {
        guard case .weight(let weightUnit) = self else { return nil }
        return weightUnit
    }
    
    var serverInt: Int16 {
        switch self {
        case .weight:   return 1
        case .volume:   return 2
        case .size:     return 3
        case .serving:  return 4
        }
    }
    
//    init?(serverAmountWithUnit: ServerAmountWithUnit) {
//        switch serverAmountWithUnit.unit {
//        case 1:
//            guard let weightUnitServerInt,
//                  let weightUnit = WeightUnit(rawValue: weightUnitServerInt) else {
//                return nil
//            }
//            self = .weight(weightUnit)
//        case 2:
//            guard let volumeUnitServerInt,
//                  let volumeUnit = VolumeUnit(rawValue: volumeUnitServerInt) else {
//                return nil
//            }
//            self = .volume(volumeUnit)
//        case 3:
//        case 4:
//            self = .serving
//        default:
//            return nil
//        }
//    }
}
