import XCTest
@testable import Darwin

final class DarwinTests: XCTestCase {
  
    func testFirstName() {
        XCTAssertEqual(darwin.firstName, "Charles")
    }

    static var allTests = [
        ("testFirstName", testFirstName),
    ]
}
