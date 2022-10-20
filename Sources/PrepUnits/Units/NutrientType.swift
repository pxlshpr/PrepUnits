import Foundation

public enum NutrientType: Int16, CaseIterable, Codable {
    
    /// Fats
    case saturatedFat = 1
    case monounsaturatedFat
    case polyunsaturatedFat
    case transFat
    case cholesterol
    
    /// Fibers
    case dietaryFiber = 50
    case solubleFiber
    case insolubleFiber
    
    /// Sugars
    case sugars = 100
    case addedSugars
    case sugarAlcohols
    
    /// Minerals
    case calcium = 150
    case chloride
    case chromium
    case copper
    case iodine
    case iron
    case magnesium
    case manganese
    case molybdenum
    case phosphorus
    case potassium
    case selenium
    case sodium
    case zinc
    
    /// Vitamins
    case vitaminA = 200
    case vitaminB6
    case vitaminB12
    case vitaminC
    case vitaminD
    case vitaminE
    case vitaminK
    case biotin
    case choline
    case folate
    case niacin
    case pantothenicAcid
    case riboflavin
    case thiamin
    case vitaminB2
    case cobalamin
    case folicAcid
    case vitaminB1
    case vitaminB3
    case vitaminK2
    
    /// Misc
    case caffeine = 250
    case ethanol
    case taurine
    case polyols
    case gluten
    case starch
    case salt
}

extension NutrientType {
    public static func types(inGroup group: NutrientTypeGroup) -> [NutrientType] {
        allCases.filter { $0.group == group}
    }
    
    public static var vitamins: [NutrientType] {
        types(inGroup: .vitamins)
    }
    
    public static var minerals: [NutrientType] {
        types(inGroup: .minerals)
    }
    
    public static var misc: [NutrientType] {
        types(inGroup: .misc)
    }
    
    public var group: NutrientTypeGroup {
        switch self {
        case .saturatedFat, .monounsaturatedFat, .polyunsaturatedFat, .transFat, .cholesterol:
            return .fats
        case .dietaryFiber, .solubleFiber, .insolubleFiber:
            return .fibers
        case .sugars, .addedSugars, .sugarAlcohols:
            return .sugars
        case .calcium, .chloride, .chromium, .copper, .iodine, .iron, .magnesium, .manganese, .molybdenum, .phosphorus, .potassium, .selenium, .sodium, .zinc:
            return .minerals
        case .vitaminA, .vitaminB6, .vitaminB12, .vitaminC, .vitaminD, .vitaminE, .vitaminK, .biotin, .choline, .folate, .niacin, .pantothenicAcid, .riboflavin, .thiamin, .vitaminB2, .cobalamin, .folicAcid, .vitaminB1, .vitaminB3, .vitaminK2:
            return .vitamins
        case .caffeine, .ethanol, .taurine, .polyols, .gluten, .starch, .salt:
            return .misc
        }
    }
    
    public var units: [NutrientUnit] {
        switch self {
        case .cholesterol, .calcium, .chloride, .copper, .iron, .magnesium, .manganese, .phosphorus, .potassium, .sodium, .zinc, .vitaminC, .vitaminB6, .choline, .pantothenicAcid, .riboflavin, .thiamin, .caffeine, .vitaminB1, .vitaminB3, .vitaminK2, .taurine:
            return [.mg]
        case .chromium, .iodine, .molybdenum, .selenium, .vitaminB12, .vitaminK, .biotin, .vitaminB2, .cobalamin, .folicAcid:
            return [.mcg]
        case .vitaminA:
            return [.mcgRAE, .IU]
        case .vitaminD:
            return [.mcg, .IU]
        case .vitaminE:
            return [.mgAT, .IU]
        case .folate:
            return [.mcgDFE, .mcg]
        case .niacin:
            return [.mgNE, .mg]
        default:
            return [.g]
        }
    }
    
    public var sortPosition: Int {
        let orderedArray: [NutrientType] = [
            .saturatedFat,
            .monounsaturatedFat,
            .polyunsaturatedFat,
            .transFat,
            .cholesterol,
            .dietaryFiber,
            .solubleFiber,
            .insolubleFiber,
            .sugars,
            .addedSugars,
            .sugarAlcohols,
            .calcium,
            .chloride,
            .chromium,
            .copper,
            .iodine,
            .iron,
            .magnesium,
            .manganese,
            .molybdenum,
            .phosphorus,
            .potassium,
            .selenium,
            .sodium,
            .zinc,
            .vitaminA,
            .vitaminB1,
            .vitaminB2,
            .vitaminB3,
            .vitaminB6,
            .vitaminB12,
            .vitaminC,
            .vitaminD,
            .vitaminE,
            .vitaminK,
            .vitaminK2,
            .biotin,
            .cobalamin,
            .choline,
            .folate,
            .folicAcid,
            .niacin,
            .pantothenicAcid,
            .riboflavin,
            .thiamin,
            .caffeine,
            .ethanol,
            .gluten,
            .polyols,
            .salt,
            .starch,
            .taurine
        ]
        guard let index = orderedArray.firstIndex(of: self) else {
            return 0
        }
        return index + 1
//        switch self {
//        case .saturatedFat:
//            return 1
//        case .monounsaturatedFat:
//            return 2
//        case .polyunsaturatedFat:
//            return 3
//        case .transFat:
//            return 4
//        case .cholesterol:
//            return 5
//        case .dietaryFiber:
//            return 6
//        case .solubleFiber:
//            return 7
//        case .insolubleFiber:
//            return 8
//        case .sugars:
//            return 9
//        case .addedSugars:
//            return 10
//        case .sugarAlcohols:
//            return 11
//        case .calcium:
//            return 12
//        case .chloride:
//            return 13
//        case .chromium:
//            return 14
//        case .copper:
//            return 15
//        case .iodine:
//            return 16
//        case .iron:
//            return 17
//        case .magnesium:
//            return 18
//        case .manganese:
//            return 19
//        case .molybdenum:
//            return 20
//        case .phosphorus:
//            return 21
//        case .potassium:
//            return 22
//        case .selenium:
//            return 23
//        case .sodium:
//            return 24
//        case .zinc:
//            return 25
//        case .vitaminA:
//            return 26
//        case .vitaminB1:
//
//        case .vitaminB2:
//
//        case .vitaminB3:
//
//        case .vitaminB6:
//            return 27
//        case .vitaminB12:
//            return 28
//        case .vitaminC:
//            return 29
//        case .vitaminD:
//            return 30
//        case .vitaminE:
//            return 31
//        case .vitaminK:
//            return 32
//        case .vitaminK2:
//
//        case .biotin:
//            return 33
//        case .cobalamin:
//            <#code#>
//        case .choline:
//            return 34
//        case .folate:
//            return 35
//        case .folicAcid:
//            <#code#>
//        case .niacin:
//            return 36
//        case .pantothenicAcid:
//            return 37
//        case .riboflavin:
//            return 38
//        case .thiamin:
//            return 39
//        case .caffeine:
//            return 40
//        case .ethanol:
//            return 41
//        case .gluten:
//            return
//        case .polyols:
//            return
//        case .salt:
//
//        case .starch:
//
//        case .taurine:
//
//
//        }
    }
}

extension NutrientType {
    public var description: String {
        switch self {
        case .saturatedFat:
            return "Saturated Fat"
        case .monounsaturatedFat:
            return "Monounsaturated Fat"
        case .polyunsaturatedFat:
            return "Polyunsaturated Fat"
        case .transFat:
            return "Trans Fat"
        case .cholesterol:
            return "Cholesterol"
        case .dietaryFiber:
            return "Dietary Fiber"
        case .solubleFiber:
            return "Soluble Fiber"
        case .insolubleFiber:
            return "Insoluble Fiber"
        case .sugars:
            return "Sugars"
        case .addedSugars:
            return "Added Sugars"
        case .sugarAlcohols:
            return "Sugar Alcohols"
        case .calcium:
            return "Calcium"
        case .chloride:
            return "Chloride"
        case .chromium:
            return "Chromium"
        case .copper:
            return "Copper"
        case .iodine:
            return "Iodine"
        case .iron:
            return "Iron"
        case .magnesium:
            return "Magnesium"
        case .manganese:
            return "Manganese"
        case .molybdenum:
            return "Molybdenum"
        case .phosphorus:
            return "Phosphorus"
        case .potassium:
            return "Potassium"
        case .selenium:
            return "Selenium"
        case .sodium:
            return "Sodium"
        case .zinc:
            return "Zinc"
        case .vitaminA:
            return "Vitamin A"
        case .vitaminB6:
            return "Vitamin B6"
        case .vitaminB12:
            return "Vitamin B12"
        case .vitaminC:
            return "Vitamin C"
        case .vitaminD:
            return "Vitamin D"
        case .vitaminE:
            return "Vitamin E"
        case .vitaminK:
            return "Vitamin K"
        case .biotin:
            return "Biotin"
        case .choline:
            return "Choline"
        case .folate:
            return "Folate"
        case .niacin:
            return "Niacin"
        case .pantothenicAcid:
            return "Pantothenic Acid"
        case .riboflavin:
            return "Riboflavin"
        case .thiamin:
            return "Thiamin"
        case .caffeine:
            return "Caffeine"
        case .ethanol:
            return "Ethanol"
        case .vitaminB2:
            return "Vitamin B2"
        case .cobalamin:
            return "Cobalamin"
        case .folicAcid:
            return "Folic Acid"
        case .vitaminB1:
            return "Vitamin B1"
        case .vitaminB3:
            return "Vitamin B3"
        case .vitaminK2:
            return "Vitamin K2"
        case .taurine:
            return "Taurine"
        case .polyols:
            return "Polyols"
        case .gluten:
            return "Gluten"
        case .starch:
            return "Starch"
        case .salt:
            return "Salt"
        }
    }
    
    /// Taken from: https://www.fda.gov/media/135301/download
    public var dailyValue: (Double, NutrientUnit)? {
        switch self {
        case .saturatedFat:
            return (20, .g)
        case .monounsaturatedFat:
            return nil
        case .polyunsaturatedFat:
            return nil
        case .transFat:
            return nil
        case .cholesterol:
            return (300, .mg)
        case .dietaryFiber:
            return (28, .g)
        case .solubleFiber:
            return nil
        case .insolubleFiber:
            return nil
        case .sugars:
            return nil
        case .addedSugars:
            return (50, .g)
        case .sugarAlcohols:
            return nil
        case .calcium:
            return (1300, .mg)
        case .chloride:
            return (2300, .mg)
        case .chromium:
            return (35, .mcg)
        case .copper:
            return (0.9, .mg)
        case .iodine:
            return (150, .mcg)
        case .iron:
            return (18, .mg)
        case .magnesium:
            return (420, .mg)
        case .manganese:
            return (2.3, .mg)
        case .molybdenum:
            return (45, .mcg)
        case .phosphorus:
            return (1250, .mg)
        case .potassium:
            return (4700, .mg)
        case .selenium:
            return (55, .mcg)
        case .sodium:
            return (2300, .mg)
        case .zinc:
            return (11, .mg)
        case .vitaminA:
            return (900, .mcgRAE)
        case .vitaminB6:
            return (1.7, .mg)
        case .vitaminB12:
            return (2.4, .mcg)
        case .vitaminC:
            return (90, .mg)
        case .vitaminD:
            return (20, .mcg)
        case .vitaminE:
            return (15, .mgAT)
        case .vitaminK:
            return (120, .mcg)
        case .biotin:
            return (30, .mcg)
        case .choline:
            return (550, .mg)
        case .folate:
            return (400, .mcgDFE)
        case .niacin:
            return (16, .mgNE)
        case .pantothenicAcid:
            return (5, .mg)
        case .riboflavin:
            return (1.3, .mg)
        case .thiamin:
            return (1.2, .mg)
        case .caffeine:
            /// Source: https://www.hsph.harvard.edu/nutritionsource/caffeine/
            return (400, .mg)
        case .ethanol:
            return nil
        case .vitaminB2:
            return nil
        case .cobalamin:
            return nil
        case .folicAcid:
            return nil
        case .vitaminB1:
            return nil
        case .vitaminB3:
            return nil
        case .vitaminK2:
            return nil
        case .taurine:
            return nil
        case .polyols:
            return nil
        case .gluten:
            return nil
        case .starch:
            return nil
        case .salt:
            return nil
        }
    }
    
    /**
     Converts a % RDA value to an amount
     */
    public func convertRDApercentage(_ percentage: Double) -> (amount: Double, NutrientUnit)? {
        guard let dailyValue = dailyValue else {
            return nil
        }
        return ((dailyValue.0) * percentage / 100.0, dailyValue.1)
    }
}
