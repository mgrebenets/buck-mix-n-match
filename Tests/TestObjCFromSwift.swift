import XCTest

@testable import MyLib

class TestObjCFromSwift: XCTestCase {

    func testStuff() {
        print(FileManager.documentsDirectoryURL)
    }
}