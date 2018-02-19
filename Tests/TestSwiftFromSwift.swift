
import XCTest

@testable import MyLib

class TestSwiftFromSwift: XCTestCase {
    
    func testSwiftFromSwift() {
        let data = "abc".data(using: .utf8)! as NSData
        XCTAssert(data.hexadecimalNSString() == "")
    }

    // If the code below is commented, then hexadecimalString
    // is considered to be never used by the compiler.
    // It will then optimize it out of the final binary!!!
    // Even if -Onone is set for SWIFT and GCC optimization levels!
    // Trying to call this method via hexadecimalNSString "wrapper" will
    // cause a crash then!
    // Not sure if same happens for dynamic frameworks...
    func testSwiftFromSwift2() {
        let data = "abc".data(using: .utf8)!
        XCTAssert(data.hexadecimalString() == "")
    }
}
