import SwiftUI

public extension View {
  func eraseToAnyView() -> AnyView { AnyView(self) }
  
  @ViewBuilder func `if`<Content: View>(_ condition: Bool, transform: (Self) -> Content) -> some View {
    if condition {
      transform(self)
    } else {
      self
    }
  }
  
  func transform<Content: View>(@ViewBuilder transform: (Self) -> Content) -> some View {
    transform(self)
  }
}
