import Foundation

public struct FoodSearchResult: Codable, Identifiable {
    public let id: UUID
    public let name: String
    public let emoji: String
    public let detail: String?
    public let brand: String?

    public init(id: UUID, name: String, emoji: String, detail: String? = nil, brand: String? = nil) {
        self.id = id
        self.name = name
        self.emoji = emoji
        self.detail = detail
        self.brand = brand
    }
}
