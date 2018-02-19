
import XCTest

@testable import MyLib

class TestSwiftFromSwift: XCTestCase {
    
    func testSwiftFromSwift() {
        let data = "abc".data(using: .utf8)! as NSData
        XCTAssert(data.hexadecimalNSString() == "")
    }
}
