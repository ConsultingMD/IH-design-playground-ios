# IH-design-playground-ios
test repo for design with design md file
# IH Design Playground – iOS

A comprehensive iOS design system implementation for Included Health, built with SwiftUI.

## Overview

This project serves as a test playground and reference implementation for the Included Health Design System in iOS. It showcases design principles, color tokens, typography, spacing, elevation, and reusable components.

## Prerequisites

- Xcode 14.0+
- iOS 15.0+
- Swift 5.7+

## Getting Started

```bash
# Clone the repository
git clone https://github.com/davekodinsky-IH/ih-design-playground-ios.git
cd ih-design-playground-ios

# Open in Xcode
open IHDesignPlayground.xcodeproj

IHDesignPlayground/
├── App/
│   └── IHDesignPlaygroundApp.swift        # Main app entry point
│
├── Design/
│   ├── design.md                          # Complete design system spec
│   └── Assets.xcassets/
│
├── Colors/
│   ├── ColorPalette.swift                 # Core color tokens
│   ├── ColorTokens.swift                  # Semantic color tokens
│   └── ColorExtensions.swift              # Color helper extensions
│
├── Utilities/
│   ├── Typography.swift                   # Type scale definitions
│   ├── Spacing.swift                      # Spacing scale tokens
│   ├── Elevation.swift                    # Shadow/elevation system
│   └── Constants.swift                    # Global constants
│
├── Components/
│   ├── Buttons/
│   │   ├── PrimaryButton.swift
│   │   ├── SecondaryButton.swift
│   │   └── IconButton.swift
│   ├── Cards/
│   │   ├── BaseCard.swift
│   │   └── ServiceCard.swift
│   ├── Messaging/
│   │   ├── DotResponse.swift
│   │   ├── MessageBubble.swift
│   │   └── QuickReplies.swift
│   ├── Badges/
│   │   └── Badge.swift
│   ├── Avatars/
│   │   └── Avatar.swift
│   └── Forms/
│       ├── TextField.swift
│       └── TextArea.swift
│
├── Screens/
│   ├── HomeScreen.swift
│   ├── ComponentsGalleryScreen.swift
│   ├── ColorPaletteScreen.swift
│   ├── TypographyScreen.swift
│   ├── SpacingScreen.swift
│   └── MessagingScreen.swift
│
└── Preview/
    └── PreviewData.swift                  # Mock data for SwiftUI previews

Usage Examples
Using Color Tokens
Swift
import SwiftUI

struct MyView: View {
    var body: some View {
        VStack {
            Text("Hello, Included Health!")
                .foregroundColor(.textPrimaryDark)
                .font(.system(size: 16, weight: .bold))
        }
        .padding(.medium)
        .background(Color.surfaceNeutralBase)
    }
}
Using Typography
Swift
import SwiftUI

struct TypographyExample: View {
    var body: some View {
        VStack(alignment: .leading, spacing: .medium) {
            Text("Display 1")
                .font(Typography.display1)
            
            Text("Title 1")
                .font(Typography.title1)
            
            Text("Body 1")
                .font(Typography.body1)
        }
    }
}
Using Spacing
Swift
import SwiftUI

struct SpacingExample: View {
    var body: some View {
        VStack(spacing: .medium) {
            Text("Item 1")
            Text("Item 2")
            Text("Item 3")
        }
        .padding(.large)
    }
}
Using Elevation
Swift
import SwiftUI

struct CardExample: View {
    var body: some View {
        Text("Card Content")
            .padding()
            .background(Color.surfaceNeutralBase)
            .shadow(color: .black.opacity(0.08), radius: 2, x: 2, y: 4)
            // Or use: .shadow(elevation: .level1)
    }
}
Building Components
Swift
import SwiftUI

struct MyButton: View {
    let title: String
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Text(title)
                .font(Typography.body1)
                .foregroundColor(.textPrimaryLight)
                .frame(maxWidth: .infinity)
                .padding(.medium)
                .background(Color.surfaceBrandBase)
                .cornerRadius(8)
        }
    }
}
Components
Currently Implemented
Buttons: Primary, Secondary, Icon variants
Typography: Full type scale with proper weights
Colors: Complete semantic color token system
Spacing: Standardized spacing scale
Elevation: Shadow system for depth
Coming Soon
Cards (Base, Service, Option, Preview)
Messaging components (Dot responses, Quick replies, Multi-select)
Forms (TextField, TextArea, Validation)
Badges and Avatar components
Modals and Sheets
Navigation components
Design Principles
All components in this playground adhere to the Included Health Design System principles:

Design with Care – Empathy, clarity, and emotional safety first
Clear by Design – Hierarchy and intent guide attention
Confident, not Rigid – Flexible patterns that adapt to context
Contributing
When adding new components:

Use semantic color tokens only (no hard-coded hex values)
Reference Typography, Spacing, and Elevation utilities
Include SwiftUI previews for all components
Follow the folder structure convention
Document usage with code examples
Ensure accessibility (VoiceOver labels, proper contrast, etc.)
Design System Documentation
See design.md for the complete Included Health Design System specification, including:

Color system and tokens
Typography scale
Spacing guidelines
Elevation system
Icons
Component patterns
Content strategy
Resources
Google Fonts – Figtree
Included Health Design System
SwiftUI Documentation
License
© 2026 Included Health. All rights reserved.


---

#### **Colors/ColorPalette.swift**
```swift
import SwiftUI

// MARK: - Core Color Palette
// These are the base colors that semantic tokens reference
// Do NOT use these directly in UI—use semantic tokens instead

struct CoreColorPalette {
    // MARK: Blue
    static let blue100 = Color(red: 0.965, green: 0.980, blue: 0.992)
    static let blue200 = Color(red: 0.902, green: 0.937, blue: 0.996)
    static let blue300 = Color(red: 0.816, green: 0.886, blue: 1.0)
    static let blue400 = Color(red: 0.651, green: 0.784, blue: 1.0)
    static let blue500 = Color(red: 0.506, green: 0.678, blue: 0.965)
    static let blue600 = Color(red: 0.341, green: 0.557, blue: 0.910)
    static let blue700 = Color(red: 0.0, green: 0.071, blue: 0.906)
    static let blue800 = Color(red: 0.0, green: 0.141, blue: 0.502)
    static let blue900 = Color(red: 0.0, green: 0.063, blue: 0.282)

    // MARK: Purple
    static let purple100 = Color(red: 0.980, green: 0.976, blue: 1.0)
    static let purple200 = Color(red: 0.945, green: 0.941, blue: 1.0)
    static let purple300 = Color(red: 0.878, green: 0.863, blue: 0.992)
    static let purple400 = Color(red: 0.776, green: 0.741, blue: 0.984)
    static let purple500 = Color(red: 0.678, green: 0.624, blue: 0.941)
    static let purple600 = Color(red: 0.569, green: 0.486, blue: 0.882)
    static let purple700 = Color(red: 0.416, green: 0.298, blue: 0.871)
    static let purple800 = Color(red: 0.235, green: 0.106, blue: 0.561)
    static let purple900 = Color(red: 0.098, green: 0.027, blue: 0.271)

    // MARK: Orange
    static let orange100 = Color(red: 0.996, green: 0.976, blue: 0.969)
    static let orange200 = Color(red: 0.988, green: 0.953, blue: 0.941)
    static let orange300 = Color(red: 0.992, green: 0.843, blue: 0.804)
    static let orange400 = Color(red: 0.973, green: 0.702, blue: 0.627)
    static let orange500 = Color(red: 0.933, green: 0.569, blue: 0.471)
    static let orange600 = Color(red: 0.855, green: 0.412, blue: 0.298)
    static let orange700 = Color(red: 0.714, green: 0.263, blue: 0.145)
    static let orange800 = Color(red: 0.443, green: 0.067, blue: 0.0)
    static let orange900 = Color(red: 0.231, green: 0.0, blue: 0.0)

    // MARK: Green
    static let green100 = Color(red: 0.969, green: 0.984, blue: 0.976)
    static let green200 = Color(red: 0.918, green: 0.980, blue: 0.945)
    static let green300 = Color(red: 0.776, green: 0.922, blue: 0.859)
    static let green400 = Color(red: 0.549, green: 0.851, blue: 0.737)
    static let green500 = Color(red: 0.329, green: 0.769, blue: 0.620)
    static let green600 = Color(red: 0.0, green: 0.659, blue: 0.490)
    static let green700 = Color(red: 0.0, green: 0.514, blue: 0.365)
    static let green800 = Color(red: 0.0, green: 0.325, blue: 0.188)
    static let green900 = Color(red: 0.0, green: 0.180, blue: 0.118)

    // MARK: Amber
    static let amber100 = Color(red: 1.0, green: 0.984, blue: 0.961)
    static let amber200 = Color(red: 0.988, green: 0.957, blue: 0.902)
    static let amber300 = Color(red: 0.961, green: 0.863, blue: 0.765)
    static let amber400 = Color(red: 0.925, green: 0.702, blue: 0.541)
    static let amber500 = Color(red: 0.867, green: 0.620, blue: 0.337)
    static let amber600 = Color(red: 0.789, green: 0.475, blue: 0.0)
    static let amber700 = Color(red: 0.647, green: 0.337, blue: 0.0)
    static let amber800 = Color(red: 0.400, green: 0.149, blue: 0.0)
    static let amber900 = Color(red: 0.208, green: 0.016, blue: 0.0)

    // MARK: Red
    static let red100 = Color(red: 0.996, green: 0.976, blue: 0.973)
    static let red200 = Color(red: 0.992, green: 0.949, blue: 0.941)
    static let red300 = Color(red: 0.992, green: 0.839, blue: 0.831)
    static let red400 = Color(red: 0.980, green: 0.694, blue: 0.682)
    static let red500 = Color(red: 0.929, green: 0.557, blue: 0.549)
    static let red600 = Color(red: 0.859, green: 0.396, blue: 0.400)
    static let red700 = Color(red: 0.796, green: 0.047, blue: 0.192)
    static let red800 = Color(red: 0.498, green: 0.0, blue: 0.035)
    static let red900 = Color(red: 0.235, green: 0.0, blue: 0.008)

    // MARK: Grey
    static let grey100 = Color(red: 0.980, green: 0.980, blue: 0.980)
    static let grey200 = Color(red: 0.949, green: 0.949, blue: 0.949)
    static let grey300 = Color(red: 0.882, green: 0.882, blue: 0.882)
    static let grey400 = Color(red: 0.776, green: 0.776, blue: 0.776)
    static let grey500 = Color(red: 0.675, green: 0.675, blue: 0.675)
    static let grey600 = Color(red: 0.561, green: 0.561, blue: 0.561)
    static let grey700 = Color(red: 0.427, green: 0.427, blue: 0.427)
    static let grey800 = Color(red: 0.231, green: 0.231, blue: 0.231)
    static let grey900 = Color(red: 0.094, green: 0.094, blue: 0.094)

    // MARK: Base Neutrals
    static let white = Color(red: 1.0, green: 1.0, blue: 1.0)
    static let black = Color(red: 0.0, green: 0.0, blue: 0.0)

    // MARK: Black Transparencies
    static let blackTransparent10 = Color.black.opacity(0.10)
    static let blackTransparent20 = Color.black.opacity(0.20)
    static let blackTransparent30 = Color.black.opacity(0.30)
    static let blackTransparent40 = Color.black.opacity(0.40)
    static let blackTransparent50 = Color.black.opacity(0.50)
    static let blackTransparent60 = Color.black.opacity(0.60)
    static let blackTransparent70 = Color.black.opacity(0.70)
    static let blackTransparent80 = Color.black.opacity(0.80)
    static let blackTransparent90 = Color.black.opacity(0.90)

    // MARK: White Transparencies
    static let whiteTransparent10 = Color.white.opacity(0.10)
    static let whiteTransparent20 = Color.white.opacity(0.20)
    static let whiteTransparent30 = Color.white.opacity(0.30)
    static let whiteTransparent40 = Color.white.opacity(0.40)
    static let whiteTransparent50 = Color.white.opacity(0.50)
    static let whiteTransparent60 = Color.white.opacity(0.60)
    static let whiteTransparent70 = Color.white.opacity(0.70)
    static let whiteTransparent80 = Color.white.opacity(0.80)
    static let whiteTransparent90 = Color.white.opacity(0.90)
}
import SwiftUI

// MARK: - Semantic Color Tokens
// Use these colors throughout the app—never use core palette tokens directly

extension Color {
    // MARK: - Surface / Neutral
    static let surfaceNeutralBase = CoreColorPalette.white
    static let surfaceNeutralWeakest = CoreColorPalette.grey100
    static let surfaceNeutralWeak = CoreColorPalette.grey200
    static let surfaceNeutralDisabled = CoreColorPalette.grey200
    static let surfaceNeutralStrong = CoreColorPalette.grey800
    static let surfaceNeutralStrongest = CoreColorPalette.grey900

    // MARK: - Surface / Brand
    static let surfaceBrandWeakest = CoreColorPalette.blue100
    static let surfaceBrandWeak = CoreColorPalette.blue200
    static let surfaceBrandBase = CoreColorPalette.blue700
    static let surfaceBrandStrong = CoreColorPalette.blue800
    static let surfaceBrandStrongest = CoreColorPalette.blue900

    // MARK: - Surface / Accent One
    static let surfaceAccentOneWeakest = CoreColorPalette.blue300
    static let surfaceAccentOneWeak = CoreColorPalette.blue600
    static let surfaceAccentOneBase = CoreColorPalette.blue700
    static let surfaceAccentOneStrong = CoreColorPalette.blue800

    // MARK: - Surface / Accent Two
    static let surfaceAccentTwoWeakest = CoreColorPalette.purple100
    static let surfaceAccentTwoWeak = CoreColorPalette.purple200
    static let surfaceAccentTwoBase = CoreColorPalette.purple700
    static let surfaceAccentTwoStrong = CoreColorPalette.purple800

    // MARK: - Surface / Success
    static let surfaceSuccessWeakest = CoreColorPalette.green100
    static let surfaceSuccessWeak = CoreColorPalette.green200
    static let surfaceSuccessBase = CoreColorPalette.green700
    static let surfaceSuccessStrong = CoreColorPalette.green800

    // MARK: - Surface / Warning
    static let surfaceWarningWeakest = CoreColorPalette.amber100
    static let surfaceWarningWeak = CoreColorPalette.amber200
    static let surfaceWarningBase = CoreColorPalette.amber700
    static let surfaceWarningStrong = CoreColorPalette.amber800

    // MARK: - Surface / Danger
    static let surfaceDangerWeakest = CoreColorPalette.red100
    static let surfaceDangerWeak = CoreColorPalette.red200
    static let surfaceDangerBase = CoreColorPalette.red700
    static let surfaceDangerStrong = CoreColorPalette.red800

    // MARK: - Surface / Overlay
    static let surfaceOverlayWeak = CoreColorPalette.blackTransparent10
    static let surfaceOverlayBase = CoreColorPalette.blackTransparent30
    static let surfaceOverlayStrong = CoreColorPalette.blackTransparent80

    // MARK: - Text / Primary
    static let textPrimaryLight = CoreColorPalette.white
    static let textPrimaryDark = CoreColorPalette.grey900
    static let textPlaceholder = CoreColorPalette.grey600
    static let textSecondary = CoreColorPalette.grey700
    static let textDisabled = CoreColorPalette.grey600

    // MARK: - Text / Brand
    static let textBrandWeak = CoreColorPalette.blue200
    static let textBrandBase = CoreColorPalette.blue700
    static let textBrandStrong = CoreColorPalette.blue800

    // MARK: - Text / Success
    static let textSuccessWeak = CoreColorPalette.green200
    static let textSuccessBase = CoreColorPalette.green700
    static let textSuccessStrong = CoreColorPalette.green800

    // MARK: - Text / Warning
    static let textWarningWeak = CoreColorPalette.amber200
    static let textWarningBase = CoreColorPalette.amber700
    static let textWarningStrong = CoreColorPalette.amber800

    // MARK: - Text / Danger
    static let textDangerWeak = CoreColorPalette.red200
    static let textDangerBase = CoreColorPalette.red700
    static let textDangerStrong = CoreColorPalette.red800

    // MARK: - Border / Neutral
    static let borderWeakest = CoreColorPalette.grey300
    static let borderWeak = CoreColorPalette.grey400
    static let borderBase = CoreColorPalette.grey600
    static let borderStrong = CoreColorPalette.grey700
    static let borderStrongest = CoreColorPalette.grey900
    static let borderContrast = CoreColorPalette.white

    // MARK: - Border / Brand
    static let borderBrandWeakest = CoreColorPalette.blue300
    static let borderBrandWeak = CoreColorPalette.blue600
    static let borderBrandBase = CoreColorPalette.blue700
    static let borderBrandStrong = CoreColorPalette.blue800

    // MARK: - Border / Success
    static let borderSuccessWeakest = CoreColorPalette.green300
    static let borderSuccessWeak = CoreColorPalette.green600
    static let borderSuccessBase = CoreColorPalette.green700
    static let borderSuccessStrong = CoreColorPalette.green800

    // MARK: - Border / Warning
    static let borderWarningWeakest = CoreColorPalette.amber300
    static let borderWarningWeak = CoreColorPalette.amber600
    static let borderWarningBase = CoreColorPalette.amber700
    static let borderWarningStrong = CoreColorPalette.amber800

    // MARK: - Border / Danger
    static let borderDangerWeakest = CoreColorPalette.red300
    static let borderDangerWeak = CoreColorPalette.red600
    static let borderDangerBase = CoreColorPalette.red700
    static let borderDangerStrong = CoreColorPalette.red800
}
import SwiftUI

struct Typography {
    // MARK: - Display Scale
    static let display1 = Font.system(size: 64, weight: .bold).tracking(-0.02)
    static let display2 = Font.system(size: 40, weight: .bold).tracking(-0.015)

    // MARK: - Title Scale
    static let title1 = Font.system(size: 32, weight: .bold).tracking(-0.01)
    static let title2 = Font.system(size: 24, weight: .bold).tracking(-0.005)
    static let title3 = Font.system(size: 20, weight: .bold).tracking(0)
    static let title4 = Font.system(size: 16, weight: .bold).tracking(0)

    // MARK: - Body Scale
    static let body1Bold = Font.system(size: 16, weight: .bold).tracking(0)
    static let body1 = Font.system(size: 16, weight: .medium).tracking(0)
    static let body2Bold = Font.system(size: 14, weight: .bold).tracking(0)
    static let body2 = Font.system(size: 14, weight: .medium).tracking(0)

    // MARK: - Caption & Footer
    static let captionBold = Font.system(size: 12, weight: .bold).tracking(0)
    static let caption = Font.system(size: 12, weight: .medium).tracking(0)
    static let footerBold = Font.system(size: 11, weight: .bold).tracking(0)
    static let footer = Font.system(size: 11, weight: .medium).tracking(0)
}

// MARK: - Font Extension for easier use
extension Font {
    func tracking(_ value: CGFloat) -> Font {
        return self
    }
}
import SwiftUI

struct SpacingScale {
    // MARK: - Spacing Values
    static let zero: CGFloat = 0
    static let twoXSmall: CGFloat = 4
    static let xSmall: CGFloat = 8
    static let small: CGFloat = 12
    static let medium: CGFloat = 16
    static let large: CGFloat = 24
    static let xLarge: CGFloat = 32
    static let twoXLarge: CGFloat = 48
    static let threeXLarge: CGFloat = 64
}

// MARK: - Convenience Extension
extension CGFloat {
    static let spacingZero = SpacingScale.zero
    static let spacing2xSmall = SpacingScale.twoXSmall
    static let spacingXSmall = SpacingScale.xSmall
    static let spacingSmall = SpacingScale.small
    static let spacingMedium = SpacingScale.medium
    static let spacingLarge = SpacingScale.large
    static let spacingXLarge = SpacingScale.xLarge
    static let spacing2xLarge = SpacingScale.twoXLarge
    static let spacing3xLarge = SpacingScale.threeXLarge
}

// Shortcut access
extension EdgeInsets {
    static let xSmall = EdgeInsets(top: 8, leading: 8, bottom: 8, trailing: 8)
    static let small = EdgeInsets(top: 12, leading: 12, bottom: 12, trailing: 12)
    static let medium = EdgeInsets(top: 16, leading: 16, bottom: 16, trailing: 16)
    static let large = EdgeInsets(top: 24, leading: 24, bottom: 24, trailing: 24)
}
import SwiftUI

struct Elevation {
    // MARK: - Shadow Values
    static let none = Shadow(color: .clear, radius: 0, x: 0, y: 0)
    static let level1 = Shadow(color: .black.opacity(0.08), radius: 2, x: 2, y: 4)
    static let level2 = Shadow(color: .black.opacity(0.16), radius: 8, x: 6, y: 16)
}

struct Shadow {
    let color: Color
    let radius: CGFloat
    let x: CGFloat
    let y: CGFloat
}

// MARK: - View Extension for applying shadows
extension View {
    func shadowElevation(_ elevation: Shadow) -> some View {
        self.shadow(color: elevation.color, radius: elevation.radius, x: elevation.x, y: elevation.y)
    }
}
import SwiftUI

struct PrimaryButton: View {
    let title: String
    let action: () -> Void
    let isLoading: Bool
    let isDisabled: Bool

    init(title: String, isLoading: Bool = false, isDisabled: Bool = false, action: @escaping () -> Void) {
        self.title = title
        self.isLoading = isLoading
        self.isDisabled = isDisabled
        self.action = action
    }

    var body: some View {
        Button(action: action) {
            if isLoading {
                ProgressView()
                    .progressViewStyle(CircularProgressViewStyle(tint: .textPrimaryLight))
            } else {
                Text(title)
                    .font(Typography.body1Bold)
                    .foregroundColor(.textPrimaryLight)
            }
        }
        .frame(maxWidth: .infinity)
        .frame(height: 48)
        .background(
            isDisabled ? Color.surfaceNeutralDisabled : Color.surfaceBrandBase
        )
        .cornerRadius(8)
        .disabled(isDisabled || isLoading)
        .opacity(isDisabled ? 0.6 : 1.0)
    }
}

#Preview {
    VStack(spacing: 16) {
        PrimaryButton(title: "Continue", action: {})
        PrimaryButton(title: "Loading", isLoading: true, action: {})
        PrimaryButton(title: "Disabled", isDisabled: true, action: {})
    }
    .padding()
    .background(Color.surfaceNeutralWeakest)
}
import SwiftUI

struct ComponentsGalleryScreen: View {
    var body: some View {
        NavigationView {
            List {
                Section(header: Text("Buttons")) {
                    NavigationLink(destination: ButtonsGalleryView()) {
                        Text("Primary Button")
                    }
                }

                Section(header: Text("Colors")) {
                    NavigationLink(destination: ColorPaletteView()) {
                        Text("Color Palette")
                    }
                }

                Section(header: Text("Typography")) {
                    NavigationLink(destination: TypographyView()) {
                        Text("Type Scale")
                    }
                }

                Section(header: Text("Spacing")) {
                    NavigationLink(destination: SpacingView()) {
                        Text("Spacing Scale")
                    }
                }

                Section(header: Text("Elevation")) {
                    NavigationLink(destination: ElevationView()) {
                        Text("Shadows & Depth")
                    }
                }
            }
            .navigationTitle("Design System")
        }
    }
}

struct ButtonsGalleryView: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 24) {
                Text("Primary Buttons")
                    .font(Typography.title2)
                    .padding(.horizontal)

                VStack(spacing: 12) {
                    PrimaryButton(title: "Continue", action: {})
                    PrimaryButton(title: "Loading", isLoading: true, action: {})
                    PrimaryButton(title: "Disabled", isDisabled: true, action: {})
                }
                .padding()
            }
            .padding(.vertical)
        }
        .navigationTitle("Buttons")
    }
}

struct ColorPaletteView: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 24) {
                ColorCategoryView(
                    title: "Brand Colors",
                    colors: [
                        ("Surface Brand Base", Color.surfaceBrandBase),
                        ("Surface Brand Weak", Color.surfaceBrandWeak),
                        ("Surface Brand Weakest", Color.surfaceBrandWeakest),
                    ]
                )

                ColorCategoryView(
                    title: "Neutral Colors",
                    colors: [
                        ("Surface Neutral Base", Color.surfaceNeutralBase),
                        ("Surface Neutral Weak", Color.surfaceNeutralWeak),
                        ("Surface Neutral Weakest", Color.surfaceNeutralWeakest),
                    ]
                )

                ColorCategoryView(
                    title: "Status Colors",
                    colors: [
                        ("Success Base", Color.surfaceSuccessBase),
                        ("Warning Base", Color.surfaceWarningBase),
                        ("Danger Base", Color.surfaceDangerBase),
                    ]
                )
            }
            .padding()
        }
        .navigationTitle("Color Palette")
    }
}

struct ColorCategoryView: View {
    let title: String
    let colors: [(String, Color)]

    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            Text(title)
                .font(Typography.title3)

            ForEach(colors, id: \.0) { name, color in
                HStack {
                    Circle()
                        .fill(color)
                        .frame(width: 40, height: 40)
                        .border(Color.borderWeakest)

                    Text(name)
                        .font(Typography.body1)
                        .foregroundColor(.textPrimaryDark)

                    Spacer()
                }
                .padding(12)
                .background(Color.surfaceNeutralBase)
                .cornerRadius(8)
            }
        }
    }
}

struct TypographyView: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 24) {
                Text("Display 1")
                    .font(Typography.display1)
                    .foregroundColor(.textPrimaryDark)

                Text("Display 2")
                    .font(Typography.display2)
                    .foregroundColor(.textPrimaryDark)

                Text("Title 1")
                    .font(Typography.title1)
                    .foregroundColor(.textPrimaryDark)

                Text("Title 2")
                    .font(Typography.title2)
                    .foregroundColor(.textPrimaryDark)

                Text("Body 1 Bold")
                    .font(Typography.body1Bold)
                    .foregroundColor(.textPrimaryDark)

                Text("Body 1 Regular")
                    .font(Typography.body1)
                    .foregroundColor(.textPrimaryDark)

                Text("Caption")
                    .font(Typography.caption)
                    .foregroundColor(.textPrimaryDark)
            }
            .padding()
        }
        .navigationTitle("Typography")
    }
}

struct SpacingView: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 24) {
                Text("Spacing Scale")
                    .font(Typography.title2)

                SpacingItemView(name: "2xs", size: 4)
                SpacingItemView(name: "xs", size: 8)
                SpacingItemView(name: "sm", size: 12)
                SpacingItemView(name: "md", size: 16)
                SpacingItemView(name: "lg", size: 24)
                SpacingItemView(name: "xl", size: 32)
            }
            .padding()
        }
        .navigationTitle("Spacing")
    }
}

struct SpacingItemView: View {
    let name: String
    let size: CGFloat

    var body: some View {
        VStack(alignment: .leading) {
            Text("\(name) – \(Int(size))px")
                .font(Typography.body2)
                .foregroundColor(.textPrimaryDark)

            RoundedRectangle(cornerRadius: 4)
                .fill(Color.surfaceBrandBase)
                .frame(height: size)
        }
    }
}

struct ElevationView: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 24) {
                Text("Elevation Levels")
                    .font(Typography.title2)

                VStack(alignment: .leading, spacing: 12) {
                    Text("No Elevation")
                        .font(Typography.body2Bold)

                    Text("Flat surfaces")
                        .font(Typography.body2)
                        .foregroundColor(.textSecondary)
                        .padding(12)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .background(Color.surfaceNeutralBase)
                        .cornerRadius(8)
                }

                VStack(alignment: .leading, spacing: 12) {
                    Text("Elevation 1")
                        .font(Typography.body2Bold)

                    Text("Cards and containers")
                        .font(Typography.body2)
                        .foregroundColor(.textSecondary)
                        .padding(12)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .background(Color.surfaceNeutralBase)
                        .cornerRadius(8)
                        .shadowElevation(.level1)
                }

                VStack(alignment: .leading, spacing: 12) {
                    Text("Elevation 2")
                        .font(Typography.body2Bold)

                    Text("Sticky headers and overlays")
                        .font(Typography.body2)
                        .foregroundColor(.textSecondary)
                        .padding(12)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .background(Color.surfaceNeutralBase)
                        .cornerRadius(8)
                        .shadowElevation(.level2)
                }
            }
            .padding()
        }
        .navigationTitle("Elevation")
    }
}

#Preview {
    ComponentsGalleryScreen()
}
