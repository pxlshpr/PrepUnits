import Foundation

public struct ServerAmountWithUnit: Codable {
    public var double: Double
    public var unit: Int16
    public var weightUnit: Int16?
    public var volumeUnit: Int16?
    public var sizeUnitId: UUID?
    public var sizeUnitVolumePrefixUnit: Int16?
    
    public init(double: Double, unit: Int16, weightUnit: Int16? = nil, volumeUnit: Int16? = nil, sizeUnitId: UUID? = nil, sizeUnitVolumePrefixUnit: Int16? = nil) {
        self.double = double
        self.unit = unit
        self.weightUnit = weightUnit
        self.volumeUnit = volumeUnit
        self.sizeUnitId = sizeUnitId
        self.sizeUnitVolumePrefixUnit = sizeUnitVolumePrefixUnit
    }
}

public struct ServerDensity: Codable {
    public var weightDouble: Double
    public var weightUnit: Int16
    public var volumeDouble: Double
    public var volumeUnit: Int16
    
    public init(weightDouble: Double, weightUnit: Int16, volumeDouble: Double, volumeUnit: Int16) {
        self.weightDouble = weightDouble
        self.weightUnit = weightUnit
        self.volumeDouble = volumeDouble
        self.volumeUnit = volumeUnit
    }
}

public struct ServerBarcode: Codable {
    public var payload: String
    public var symbology: Int16
    
    public init(payload: String, symbology: Int16) {
        self.payload = payload
        self.symbology = symbology
    }
}

public struct ServerMicronutrient: Codable {
    public var type: Int16
    public var amount: Double
    public var unit: Int16
    
    public init(nutrientType: Int16, amount: Double, unit: Int16) {
        self.type = nutrientType
        self.amount = amount
        self.unit = unit
    }
}

public struct ServerNutrients: Codable {
    public var energyInKcal: Double
    public var carb: Double
    public var protein: Double
    public var fat: Double
    public var micronutrients: [ServerMicronutrient]
    
    public init(energyInKcal: Double, carb: Double, protein: Double, fat: Double, micronutrients: [ServerMicronutrient]) {
        self.energyInKcal = energyInKcal
        self.carb = carb
        self.protein = protein
        self.fat = fat
        self.micronutrients = micronutrients
    }
}

public struct ServerSize: Codable {
    public var name: String
    public var volumePrefixUnit: Int16?
    
    public var quantity: Double
    public var amount: Double
    public var unit: Int16
    public var weightUnit: Int16?
    public var volumeUnit: Int16?
    public var sizeUnitId: UUID?
    public var sizeUnitVolumePrefixUnit: Int16?
    
    public init(name: String, volumePrefixUnit: Int16? = nil, quantity: Double, amount: Double, unit: Int16, weightUnit: Int16? = nil, volumeUnit: Int16? = nil, sizeUnitId: UUID? = nil, sizeUnitVolumePrefixUnit: Int16? = nil) {
        self.name = name
        self.volumePrefixUnit = volumePrefixUnit
        self.quantity = quantity
        self.amount = amount
        self.unit = unit
        self.weightUnit = weightUnit
        self.volumeUnit = volumeUnit
        self.sizeUnitId = sizeUnitId
        self.sizeUnitVolumePrefixUnit = sizeUnitVolumePrefixUnit
    }
}
