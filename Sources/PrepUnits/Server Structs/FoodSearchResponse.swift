import Foundation

public struct FoodSearchResponse: Codable {
    public let results: [FoodSearchResult]
    public let page: Int
    public let hasMorePages: Bool
    
    public init(results: [FoodSearchResult], page: Int, hasMorePages: Bool) {
        self.results = results
        self.page = page
        self.hasMorePages = hasMorePages
    }
}

