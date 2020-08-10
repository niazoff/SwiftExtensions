
protocol CaseNameGettable {}

extension CaseNameGettable {
  var caseName: String { Mirror(reflecting: self).children.first?.label ?? String(describing: self) }
}
