import Foundation

public extension Data {

    public func hexadecimalString() -> String {
        return ""
    }
}


public extension NSData {

    @objc public func hexadecimalNSString() -> NSString {
        return (self as Data).hexadecimalString() as NSString
    }
}