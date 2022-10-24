import Foundation

public struct PostParamsFoodsForIds: Codable {
    public let ids: [UUID]
    
    public init(ids: [UUID]) {
        self.ids = ids
    }
}

public struct PostParamsBarcodes: Codable {
    public let payloads: [String]
    
    public init(payloads: [String]) {
        self.payloads = payloads
    }
}
