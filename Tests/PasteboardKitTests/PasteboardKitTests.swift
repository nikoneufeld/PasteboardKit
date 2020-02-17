import XCTest
@testable import PasteboardKit
import AppKit
final class PasteboardKitTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        let pasteBoard = PasteBoard()
        pasteBoard.setString("hello")
        XCTAssertEqual("hello", pasteBoard.currentString!)
    }
   
    

    static var allTests = [
        ("testExample", testExample),
    ]
}
