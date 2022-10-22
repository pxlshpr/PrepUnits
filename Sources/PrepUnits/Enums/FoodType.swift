import Foundation

public enum FoodType: Codable {
    case userPublic(FoodVerificationStatus)
    case userPrivate
    case foodDatabase(database: FoodDatabase, foodId: String?)
    
    public var serverInt: Int16 {
        switch self {
        case .userPublic:   return 1
        case .userPrivate:  return 2
        case .foodDatabase: return 3
        }
    }
    
    public var verificationStatusServerInt: Int16? {
        guard case .userPublic(let foodVerificationStatus) = self else {
            return nil
        }
        return foodVerificationStatus.rawValue
    }
    
    public var databaseServerInt: Int16? {
        guard case .foodDatabase(let database, _) = self else {
            return nil
        }
        return database.rawValue
    }
    
    public var databaseFoodIdString: String? {
        guard case .foodDatabase(_, let foodId) = self else {
            return nil
        }
        return foodId
    }
}
