import SwiftUI

/// Single-line field with semantic colors and form-consistent type (see DESIGN.md — Forms / Text Field).
struct IHTextField: View {
    enum FieldState {
        case normal
        case error
        case disabled
    }

    let title: String
    var placeholder: String = ""
    @Binding var text: String
    var state: FieldState = .normal
    var errorMessage: String?

    var body: some View {
        VStack(alignment: .leading, spacing: IHSpacing.xSmall) {
            Text(title)
                .font(IHTypography.formFieldLabel())
                .foregroundStyle(labelForeground)

            TextField(
                "",
                text: $text,
                prompt: Text(placeholder)
                    .font(IHTypography.body1Medium())
                    .foregroundStyle(IHColor.Ink.placeholder)
            )
            .font(IHTypography.body1Medium())
            .foregroundStyle(inputForeground)
            .disabled(state == .disabled)
            .padding(.horizontal, IHSpacing.medium)
            .padding(.vertical, IHSpacing.small + 2)
            .background(fieldBackground)
            .clipShape(RoundedRectangle(cornerRadius: IHSpacing.small, style: .continuous))
            .overlay {
                RoundedRectangle(cornerRadius: IHSpacing.small, style: .continuous)
                    .strokeBorder(fieldBorder, lineWidth: 1)
            }

            if state == .error, let errorMessage, !errorMessage.isEmpty {
                Text(errorMessage)
                    .font(IHTypography.body2Medium())
                    .foregroundStyle(IHColor.Ink.dangerBase)
            }
        }
    }

    private var labelForeground: Color {
        switch state {
        case .normal, .error:
            IHColor.Ink.primaryDark
        case .disabled:
            IHColor.Ink.disabled
        }
    }

    private var inputForeground: Color {
        switch state {
        case .normal, .error:
            IHColor.Ink.primaryDark
        case .disabled:
            IHColor.Ink.disabled
        }
    }

    private var fieldBackground: Color {
        switch state {
        case .normal:
            IHColor.Surface.neutralBase
        case .error:
            IHColor.Surface.dangerWeak
        case .disabled:
            IHColor.Surface.neutralDisabled
        }
    }

    private var fieldBorder: Color {
        switch state {
        case .normal:
            IHColor.Border.base
        case .error:
            IHColor.Border.dangerWeak
        case .disabled:
            IHColor.Border.weakest
        }
    }
}
