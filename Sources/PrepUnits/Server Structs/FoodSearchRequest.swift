import Foundation

public struct ServerFoodSearchParams: Codable {
    public let string: String
    public let isVerified: Bool?
    /** When specified, the search is restricted to only the provided user's private database. */
    public let userId: UUID?
    
    /** When specified, search is restriced to only the provided database */
    public let databaseId: UUID?
    
    /** When set, `databaseId` is ignored and search scope includes all database */
    public let includeAllDatabases: Bool
    
    public init(string: String, isVerified: Bool = true, userId: UUID? = nil, databaseId: UUID? = nil, includeAllDatabases: Bool = false) {
        self.string = string
        self.isVerified = isVerified
        self.userId = userId
        self.databaseId = databaseId
        self.includeAllDatabases = includeAllDatabases
    }
}

public enum SearchScope {
    /// includes databases, verified user-provided and all pertaining to user (if provided)
    case all(userId: UUID?, isVerified: Bool)
    case database(databaseId: UUID)
    case personal(userId: UUID, isVerified: Bool)
    case published
    
    public func serverSearchParam(for searchString: String) -> ServerFoodSearchParams {
        ServerFoodSearchParams(
            string: searchString,
            isVerified: isVerified,
            userId: userId,
            databaseId: databaseId,
            includeAllDatabases: includeAllDatabases
        )
    }

    var includeAllDatabases: Bool {
        switch self {
        case .all:  return true
        default:    return false
        }
    }

    var databaseId: UUID? {
        switch self {
        case .database(let databaseId): return databaseId
        default:                        return nil
        }
    }
    var userId: UUID? {
        switch self {
        case .all(let userId, _):       return userId
        case .personal(let userId, _):  return userId
        default:                        return nil
        }
    }
    
    var isVerified: Bool {
        switch self {
        case .all(_, let isVerified):
            return isVerified
        case .personal(_, let isVerified):
            return isVerified
        default:
            return true
        }
    }
}
