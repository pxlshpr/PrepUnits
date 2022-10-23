import Foundation

public struct ServerFoodForm: Codable {
    public let food: ServerFood
    public let barcodes: [ServerBarcode]
    
    public init(food: ServerFood, barcodes: [ServerBarcode]) {
        self.food = food
        self.barcodes = barcodes
    }
}
