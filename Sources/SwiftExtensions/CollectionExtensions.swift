public extension Collection {
  subscript(guarded index: Index) -> Element? {
    index >= self.startIndex && index < self.endIndex ? self[index] : nil
  }
}
