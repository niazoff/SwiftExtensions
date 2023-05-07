import SwiftUI

extension Color {
  init(_ hex: UInt32, opacity: Double = 1) {
    let red = Double((hex & 0xff0000) >> 16)/255
    let green = Double((hex & 0xff00) >> 8)/255
    let blue = Double((hex & 0xff) >> 0)/255
    self.init(.sRGB, red: red, green: green, blue: blue, opacity: opacity)
  }
}

#if os(macOS)
import AppKit

public extension Color {
  static var tertiary: Color { Color(NSColor.tertiaryLabelColor) }
  static var quaternary: Color { Color(NSColor.quaternaryLabelColor) }
  
  static var systemBackground: Color { Color(NSColor.windowBackgroundColor) }
}

#elseif os(iOS)
import UIKit

public extension Color {
  static var tertiary: Color { Color(UIColor.tertiaryLabel) }
  static var quaternary: Color { Color(UIColor.quaternaryLabel) }
  
  #if !os(tvOS)
  static var systemBackground: Color { Color(UIColor.systemBackground) }
  static let secondarySystemBackground = Color(UIColor.secondarySystemBackground)
  static let tertiarySystemBackground = Color(UIColor.tertiarySystemBackground)
  
  static let darkText = Color(UIColor.darkText)
  static let lightText = Color(UIColor.lightText)
  #endif
}
#endif
