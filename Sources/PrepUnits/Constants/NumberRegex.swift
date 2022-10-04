import Foundation

//TODO: Move this
public struct NumberRegex {
    /// Recognizes number in a string using comma as decimal place (matches `39,3` and `2,05` but not `2,000` or `1,2,3`)
//    static let usingCommaAsDecimalPlace = #"^[0-9]*,[0-9][0-9]?([^0-9]|$)"#
    public static let usingCommaAsDecimalPlace = #"^[0-9]*,[0-9][0-9]*([^0-9]|$)"#
    public static let isFraction = #"^([0-9]+)\/([0-9]+)"#
}

