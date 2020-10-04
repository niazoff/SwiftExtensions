import Foundation

public extension URLComponents {
  var queryItemsDictionary: [String: String]? {
    queryItems?.reduce(into: [:]) { $0[$1.name] = $1.value }
  }
}
