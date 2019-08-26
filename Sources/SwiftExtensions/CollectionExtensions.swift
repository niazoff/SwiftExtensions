public extension Collection {
  subscript(safe index: Index) -> Element? {
    index >= self.startIndex && index < self.endIndex ? self[index] : nil
  }
}
