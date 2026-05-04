import SwiftUI

/// Type scale from `design-sandbox/design.md` (Figtree in production). Uses system UI until Figtree is bundled.
enum IHTypography {
    static func title2() -> Font {
        .system(size: 24, weight: .bold)
    }

    static func title4() -> Font {
        .system(size: 16, weight: .bold)
    }

    static func body1Medium() -> Font {
        .system(size: 16, weight: .medium)
    }

    static func body2Medium() -> Font {
        .system(size: 14, weight: .medium)
    }

    /// Primary / secondary / destructive action labels (Body 1 bold — forms guidance).
    static func primaryButton() -> Font {
        .system(size: 16, weight: .bold)
    }

    /// Short field labels in vertical forms (14 semibold).
    static func formFieldLabel() -> Font {
        .system(size: 14, weight: .semibold)
    }
}
