import SwiftUI
#if os(macOS)
import AppKit
#else
import UIKit
#endif

@available(iOS 13, macOS 10.15, macCatalyst 13, tvOS 13, watchOS 6, *)
public extension Color {
  static var label: Color {
    #if os(macOS)
    return Color(NSColor.labelColor)
    #else
    return Color(UIColor.label)
    #endif
  }
  
  static var secondaryLabel: Color {
    #if os(macOS)
    return Color(NSColor.secondaryLabelColor)
    #else
    return Color(UIColor.secondaryLabel)
    #endif
  }
  
  static var tertiaryLabel: Color {
    #if os(macOS)
    return Color(NSColor.tertiaryLabelColor)
    #else
    return Color(UIColor.tertiaryLabel)
    #endif
  }
  
  static var quaternaryLabel: Color {
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
