import Foundation

extension CGFloat: Identifiable {
  public var id: Double { Double(self) }
}
