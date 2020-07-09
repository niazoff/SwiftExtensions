import SwiftUI

@available(iOS 13, macOS 10.15, macCatalyst 13, tvOS 13, watchOS 6, *)
extension View {
  func eraseToAnyView() -> AnyView { AnyView(self) }
}
