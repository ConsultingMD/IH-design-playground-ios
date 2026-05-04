import SwiftUI

/// Semantic color tokens from `design-sandbox/design.md`. Do not use core palette names in UI code.
enum IHColor {
    enum Surface {
        static let neutralWeakest = Color(red: 250 / 255, green: 250 / 255, blue: 250 / 255) // grey/100
        static let neutralWeak = Color(red: 242 / 255, green: 242 / 255, blue: 242 / 255) // grey/200
        static let neutralBase = Color.white
        /// `surface/neutral/disabled` — disabled inputs, buttons, controls.
        static let neutralDisabled = Color(red: 242 / 255, green: 242 / 255, blue: 242 / 255)
        static let brandWeakest = Color(red: 246 / 255, green: 250 / 255, blue: 254 / 255) // blue/100
        static let brandBase = Color(red: 0, green: 0.071, blue: 0.906) // blue/700
        /// `surface/danger/weak` — inline errors, input backgrounds with error.
        static let dangerWeak = Color(red: 253 / 255, green: 242 / 255, blue: 241 / 255)
        /// `surface/danger/base` — primary danger / destructive actions.
        static let dangerBase = Color(red: 203 / 255, green: 12 / 255, blue: 49 / 255)
    }

    enum Ink {
        static let primaryDark = Color(red: 24 / 255, green: 24 / 255, blue: 24 / 255) // grey/900
        static let secondary = Color(red: 109 / 255, green: 109 / 255, blue: 109 / 255) // grey/700
        static let primaryLight = Color.white
        static let brandBase = Color(red: 0, green: 0.071, blue: 0.906)
        static let placeholder = Color(red: 143 / 255, green: 143 / 255, blue: 143 / 255) // grey/600
        static let disabled = Color(red: 143 / 255, green: 143 / 255, blue: 143 / 255) // text/disabled
        static let dangerBase = Color(red: 203 / 255, green: 12 / 255, blue: 49 / 255)
    }

    enum Border {
        static let weakest = Color(red: 225 / 255, green: 225 / 255, blue: 225 / 255) // grey/300
        static let weak = Color(red: 198 / 255, green: 198 / 255, blue: 198 / 255) // grey/400
        static let base = Color(red: 143 / 255, green: 143 / 255, blue: 143 / 255) // grey/600
        static let dangerWeak = Color(red: 219 / 255, green: 101 / 255, blue: 102 / 255)
    }
}
