import Combine

public extension Publisher where Failure == Never {
  func assign<Root: AnyObject>(to keyPath: ReferenceWritableKeyPath<Root, Output>, onWeak object: Root) -> AnyCancellable {
    sink { [weak object] in object?[keyPath: keyPath] = $0 }
  }
}
