import SwiftUI

/// Elevation tokens: `elevation/none`, `elevation/1.0`, `elevation/2.9` per design.md — no ad-hoc shadows outside this API.
enum IHElevation {
    enum Level {
        case none
        case one
        case two
    }

    static func apply(_ level: Level, to content: some View) -> some View {
        content.modifier(ElevationModifier(level: level))
    }
}

private struct ElevationModifier: ViewModifier {
    let level: IHElevation.Level

    func body(content: Content) -> some View {
        switch level {
        case .none:
            content
        case .one:
            content.shadow(color: .black.opacity(0.08), radius: 2, x: 0, y: 4)
        case .two:
            content.shadow(color: .black.opacity(0.16), radius: 6, x: 0, y: 16)
        }
    }
}

extension View {
    func ihElevation(_ level: IHElevation.Level) -> some View {
        IHElevation.apply(level, to: self)
    }
}
