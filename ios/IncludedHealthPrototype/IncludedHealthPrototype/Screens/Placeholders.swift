import SwiftUI

struct DotConversationPlaceholder: View {
    var body: some View {
        PlaceholderContent(title: "Dot conversation", tokenNote: "Messaging patterns + Disclaimer from design.md")
    }
}

struct VisitsPlaceholder: View {
    var body: some View {
        PlaceholderContent(title: "Upcoming visits", tokenNote: "Cards / Calendar components")
    }
}

struct BenefitsPlaceholder: View {
    var body: some View {
        PlaceholderContent(title: "Benefits", tokenNote: "Card + link patterns")
    }
}

struct GetCarePlaceholder: View {
    @State private var validationSample: String = ""

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: IHSpacing.large) {
                Text("Get care")
                    .font(IHTypography.title2())
                    .foregroundStyle(IHColor.Ink.primaryDark)
                Text("Primary flow — single primary action per step")
                    .font(IHTypography.body2Medium())
                    .foregroundStyle(IHColor.Ink.secondary)

                IHCard(surface: .brandWeakest, elevation: .none) {
                    VStack(alignment: .leading, spacing: IHSpacing.medium) {
                        Text("Component demos")
                            .font(IHTypography.title4())
                            .foregroundStyle(IHColor.Ink.primaryDark)

                        IHTextField(
                            title: "Validation example *",
                            placeholder: "Enter at least 3 characters",
                            text: $validationSample,
                            state: validationSample.count >= 3 ? .normal : .error,
                            errorMessage: validationSample.count >= 3 ? nil : "Keep typing — need 3+ characters."
                        )

                        IHButton(title: "Continue", variant: .primary) {}
                        IHButton(title: "Choose a different path", variant: .secondary) {}
                        IHButton(title: "Cancel request", variant: .destructive) {}
                        IHButton(title: "Unavailable action", variant: .primary, isEnabled: false) {}

                        IHTextField(
                            title: "Disabled field",
                            placeholder: "Not editable",
                            text: .constant("Read-only value"),
                            state: .disabled
                        )
                    }
                }
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(IHSpacing.medium)
        }
        .background(IHColor.Surface.neutralWeakest)
        .navigationTitle("Get care")
        .navigationBarTitleDisplayMode(.inline)
    }
}

private struct PlaceholderContent: View {
    let title: String
    let tokenNote: String

    var body: some View {
        VStack(alignment: .leading, spacing: IHSpacing.medium) {
            Text(title)
                .font(IHTypography.title2())
                .foregroundStyle(IHColor.Ink.primaryDark)
            Text(tokenNote)
                .font(IHTypography.body2Medium())
                .foregroundStyle(IHColor.Ink.secondary)
            Spacer()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
        .padding(IHSpacing.medium)
        .background(IHColor.Surface.neutralWeakest)
        .navigationTitle(title)
        .navigationBarTitleDisplayMode(.inline)
    }
}
