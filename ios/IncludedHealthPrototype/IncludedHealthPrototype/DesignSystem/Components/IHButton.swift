import SwiftUI

/// System button using semantic surfaces, borders, and type — no raw hex in call sites.
struct IHButton: View {
    enum Variant {
        case primary
        case secondary
        case destructive
    }

    let title: String
    var variant: Variant = .primary
    var isEnabled: Bool = true
    let action: () -> Void

    var body: some View {
        Button(action: action) {
            TitleChrome(title: title, variant: variant, isEnabled: isEnabled)
        }
        .disabled(!isEnabled)
        .buttonStyle(.plain)
    }

    /// Matches `IHButton` visuals for use inside `NavigationLink` labels (or other custom containers).
    struct TitleChrome: View {
        let title: String
        var variant: Variant = .primary
        var isEnabled: Bool = true

        var body: some View {
            Text(title)
                .font(IHTypography.primaryButton())
                .foregroundStyle(foreground)
                .frame(maxWidth: .infinity)
                .padding(.vertical, IHSpacing.medium)
                .background(background)
                .clipShape(RoundedRectangle(cornerRadius: IHSpacing.small, style: .continuous))
                .overlay {
                    if showsOutline {
                        RoundedRectangle(cornerRadius: IHSpacing.small, style: .continuous)
                            .strokeBorder(border, lineWidth: 1)
                    }
                }
        }

        private var showsOutline: Bool {
            if variant == .secondary { return true }
            if !isEnabled { return true }
            return false
        }

        private var background: Color {
            guard isEnabled else { return IHColor.Surface.neutralDisabled }
            switch variant {
            case .primary:
                return IHColor.Surface.brandBase
            case .secondary:
                return IHColor.Surface.neutralBase
            case .destructive:
                return IHColor.Surface.dangerBase
            }
        }

        private var foreground: Color {
            guard isEnabled else { return IHColor.Ink.disabled }
            switch variant {
            case .primary, .destructive:
                return IHColor.Ink.primaryLight
            case .secondary:
                return IHColor.Ink.primaryDark
            }
        }

        private var border: Color {
            guard isEnabled else { return IHColor.Border.weakest }
            switch variant {
            case .secondary:
                return IHColor.Border.base
            case .primary, .destructive:
                return .clear
            }
        }
    }
}
