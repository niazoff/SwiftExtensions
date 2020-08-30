#if canImport(SwiftUI)
import SwiftUI

@available(iOS 13, macOS 10.15, macCatalyst 13, tvOS 13, watchOS 6, *)
public extension View {
  func eraseToAnyView() -> AnyView { AnyView(self) }
}
#endif
