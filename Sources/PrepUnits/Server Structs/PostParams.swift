import Foundation

public struct PostParamsFoodsForIds: Codable {
    public let ids: [UUID]
    
    public init(ids: [UUID]) {
        self.ids = ids
    }
}

