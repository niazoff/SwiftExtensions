#if canImport(Combine)
import Combine

@available(iOS 13, macOS 10.15, macCatalyst 13, tvOS 13, watchOS 6, *)
public extension Publisher where Failure == Never {
  func assign<Root: AnyObject>(to keyPath: ReferenceWritableKeyPath<Root, Output>, onWeak object: Root) -> AnyCancellable {
    sink { [weak object] in object?[keyPath: keyPath] = $0 }
  }
}
#endif
