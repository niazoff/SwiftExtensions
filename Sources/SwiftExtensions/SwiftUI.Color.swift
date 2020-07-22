import SwiftUI
#if os(macOS)
import AppKit
#else
import UIKit
#endif

@available(iOS 13, macOS 10.15, macCatalyst 13, tvOS 13, watchOS 6, *)
public extension Color {
  static var tertiary: Color {
    #if os(macOS)
    return Color(NSColor.tertiaryLabelColor)
    #else
    return Color(UIColor.tertiaryLabel)
    #endif
  }
  
  static var quaternary: Color {
    #if os(macOS)
    return Color(NSColor.quaternaryLabelColor)
    #else
    return Color(UIColor.quaternaryLabel)
    #endif
  }
  
  static var systemBackground: Color {
    #if os(macOS)
    return Color(NSColor.windowBackgroundColor)
    #else
    return Color(UIColor.systemBackground)
    #endif
  }
}

#if !os(macOS)
@available(iOS 13, macCatalyst 13, tvOS 13, watchOS 6, *)
public extension Color {
  static let secondarySystemBackground = Color(UIColor.secondarySystemBackground)
  static let tertiarySystemBackground = Color(UIColor.tertiarySystemBackground)
  
  static let darkText = Color(UIColor.darkText)
  static let lightText = Color(UIColor.lightText)
}
#endif
