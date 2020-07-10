import CoreGraphics

extension CGFloat: Identifiable {
  public var id: Double { Double(self) }
}
