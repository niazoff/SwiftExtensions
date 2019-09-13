import Foundation

public extension StringProtocol {
  func camelCaseToSpaceSeparated() -> String {
    self.unicodeScalars.reduce(String()) { currentResult, scalar in
      if let lastScalar = currentResult.unicodeScalars.last {
        if (CharacterSet.uppercaseLetters.contains(scalar) &&
          !CharacterSet.uppercaseLetters.contains(lastScalar)) ||
          (CharacterSet.decimalDigits.contains(scalar) &&
            !CharacterSet.decimalDigits.contains(lastScalar)) {
          return currentResult + " " + String(scalar)
        }
      }
      return currentResult + String(scalar)
    }
  }
}
