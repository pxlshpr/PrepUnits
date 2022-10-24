import Foundation

public struct PrepFood: Codable {
    
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
    public let imageIds: [UUID]

    public let barcodes: [PrepBarcode]
}

public struct PrepSize: Codable {
    
}

public struct PrepDensity: Codable {
    
}

public struct PrepMicro: Codable {
    
}

public struct PrepBarcode: Codable {
    
}
