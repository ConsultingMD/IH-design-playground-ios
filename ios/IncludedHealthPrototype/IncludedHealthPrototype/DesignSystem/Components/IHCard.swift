import SwiftUI

/// Card container with semantic surface, spacing, and optional elevation (`IHElevation.Level`).
struct IHCard<Content: View>: View {
    enum SurfaceStyle {
        case neutralBase
        case neutralWeakest
        case brandWeakest
    }

    var surface: SurfaceStyle = .neutralBase
    /// Pass `nil` for a flat card (maps to `IHElevation.Level.none`). Default adds default card shadow.
    var elevation: IHElevation.Level?
    @ViewBuilder var content: () -> Content

    init(
        surface: SurfaceStyle = .neutralBase,
        elevation: IHElevation.Level? = .one,
        @ViewBuilder content: @escaping () -> Content
    ) {
        self.surface = surface
        self.elevation = elevation
        self.content = content
    }

    var body: some View {
        content()
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(IHSpacing.medium)
            .background(surfaceColor)
            .clipShape(RoundedRectangle(cornerRadius: IHSpacing.small, style: .continuous))
            .overlay {
                RoundedRectangle(cornerRadius: IHSpacing.small, style: .continuous)
                    .stroke(IHColor.Border.weak, lineWidth: 1)
            }
            .ihElevation(elevation ?? .none)
    }

    private var surfaceColor: Color {
        switch surface {
        case .neutralBase:
            IHColor.Surface.neutralBase
        case .neutralWeakest:
            IHColor.Surface.neutralWeakest
        case .brandWeakest:
            IHColor.Surface.brandWeakest
        }
    }
}
