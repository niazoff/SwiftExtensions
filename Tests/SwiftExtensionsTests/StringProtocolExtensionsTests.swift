import XCTest
@testable import SwiftExtensions

final class StringProtocolExtensionsTests: XCTestCase {
  func testFirstLetterUppercased() {
    XCTAssertEqual("hello world".firstLetterUppercased(), "Hello world")
  }
  
  func testCamelCaseToSpaceSeparated() {
    XCTAssertEqual("camelCase".camelCaseToSpaceSeparated(), "camel Case")
    XCTAssertEqual("CamelCase".camelCaseToSpaceSeparated(), "Camel Case")
    XCTAssertEqual("aCamelCase".camelCaseToSpaceSeparated(), "a Camel Case")
    XCTAssertEqual("camelCASE".camelCaseToSpaceSeparated(), "camel CASE")
    XCTAssertEqual("camelCase123".camelCaseToSpaceSeparated(), "camel Case 123")
    XCTAssertEqual("camelCASE123".camelCaseToSpaceSeparated(), "camel CASE 123")
  }
}
