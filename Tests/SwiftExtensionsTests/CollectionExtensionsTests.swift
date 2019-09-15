import XCTest
@testable import SwiftExtensions

final class CollectionExtensionsTests: XCTestCase {
  func testGuardedSubscript() {
    XCTAssertEqual(["Hello", "world"][guarded: 2], nil)
  }
}
