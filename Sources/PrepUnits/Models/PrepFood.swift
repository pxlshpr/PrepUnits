import Foundation

public class PrepFood: Codable {
    
    public let id: UUID
    public let name: String
    public let emoji: String
    public let detail: String?
    public let brand: String?
    
    public let amount: FormUnit
    public let serving: FormUnit

    public let sizes: [PrepSize]
    public let density: PrepDensity?

    public let energy: Double
    public let carb: Double
    public let fat: Double
    public let protein: Double
    public let micros: [PrepMicro]
    
    public let linkUrl: String?
    public let prefilledUrl: String?
    public let type: FoodType
    public let imageIds: [UUID]?

    public init?(serverFood: ServerFood) {
        guard let id = serverFood.id else {
            return nil
        }
        self.id = id
        self.name = serverFood.name
        self.emoji = serverFood.emoji
        self.detail = serverFood.detail
        self.brand = serverFood.brand

        self.energy = serverFood.nutrients.energyInKcal
        self.carb = serverFood.nutrients.carb
        self.fat = serverFood.nutrients.fat
        self.protein = serverFood.nutrients.protein
        self.linkUrl = serverFood.linkUrl
        self.prefilledUrl = serverFood.prefilledUrl
        self.imageIds = serverFood.imageIds

        //TODO: Redo these as they are dummy values
        //TODO: We need a new PrepFoodUnit type that uses the VolumeUserUnits instead of VolumeUnits to explcitly specify the units
        self.amount = .serving
        self.serving = .serving
        self.sizes = []
        self.density = nil
        self.micros = []
        self.type = .userPrivate
    }
}

public struct PrepSize: Codable {
    
}

public struct PrepDensity: Codable {
    
}

public struct PrepMicro: Codable {
    
}
