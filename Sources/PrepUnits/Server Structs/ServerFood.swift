import Foundation

public struct ServerFood: Codable {
    public let id: UUID?
    public let name: String
    public let emoji: String
    public let detail: String?
    public let brand: String?
    public let amount: ServerAmountWithUnit
    public let serving: ServerAmountWithUnit?
    public let nutrients: ServerNutrients
    public let sizes: [ServerSize]
    public let density: ServerDensity?
    public let linkUrl: String?
    public let prefilledUrl: String?
    public let imageIds: [UUID]?
    public let type: Int16
    public let verificationStatus: Int16?
    public let database: Int16?
    public let databaseFoodId: String?
    
    public init(id: UUID?, name: String, emoji: String, detail: String?, brand: String?, amount: ServerAmountWithUnit, serving: ServerAmountWithUnit?, nutrients: ServerNutrients, sizes: [ServerSize], density: ServerDensity?, linkUrl: String?, prefilledUrl: String?, imageIds: [UUID]?, type: Int16, verificationStatus: Int16? = nil, database: Int16? = nil, databaseFoodId: String? = nil) {
        self.id = id
        self.name = name
        self.emoji = emoji
        self.detail = detail
        self.brand = brand
        self.amount = amount
        self.serving = serving
        self.nutrients = nutrients
        self.sizes = sizes
        self.density = density
        self.linkUrl = linkUrl
        self.prefilledUrl = prefilledUrl
        self.imageIds = imageIds
        self.type = type
        self.verificationStatus = verificationStatus
        self.database = database
        self.databaseFoodId = databaseFoodId
    }
}
