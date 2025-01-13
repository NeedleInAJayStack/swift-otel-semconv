import SemConv
import XCTest

class AttributeNameTests: XCTestCase {
    func testAttributeName() async throws {
        XCTAssertEqual(SemConv.http.response.status_code, "http.response.status_code")
    }
}
