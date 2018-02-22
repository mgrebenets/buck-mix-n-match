import Foundation

public extension Data {

    public func hexadecimalString() -> String {
        return ""
    }
}


@objc extension NSData {

    @objc public func _hexadecimalNSString() -> NSString {
        return (self as Data).hexadecimalString() as NSString
    }
}
