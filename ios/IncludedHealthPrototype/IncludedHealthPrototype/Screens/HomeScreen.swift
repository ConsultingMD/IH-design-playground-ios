import SwiftUI

/// Home hub: one dominant primary CTA; other flows are secondary navigation rows.
struct HomeScreen: View {
    @State private var careTopic: String = ""

    var body: some View {
        ZStack(alignment: .bottom) {
            ScrollView {
                VStack(alignment: .leading, spacing: IHSpacing.large) {
                    Text("Today")
                        .font(IHTypography.title2())
                        .foregroundStyle(IHColor.Ink.primaryDark)

                    Text("Choose where to go next.")
                        .font(IHTypography.body1Medium())
                        .foregroundStyle(IHColor.Ink.secondary)

                    IHTextField(
                        title: "What do you need help with? *",
                        placeholder: "Describe what you need help with…",
                        text: $careTopic,
                        state: .normal
                    )

                    VStack(spacing: IHSpacing.small) {
                        secondaryRow(
                            title: "Start a Dot conversation",
                            subtitle: "Message your AI assistant"
                        ) {
                            DotConversationPlaceholder()
                        }

                        secondaryRow(
                            title: "View upcoming visits",
                            subtitle: "See what’s scheduled"
                        ) {
                            VisitsPlaceholder()
                        }

                        secondaryRow(
                            title: "Explore benefits",
                            subtitle: "Coverage and programs"
                        ) {
                            BenefitsPlaceholder()
                        }
                    }

                    IHButton(title: "Clear topic", variant: .secondary, isEnabled: !careTopic.isEmpty) {
                        careTopic = ""
                    }
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.horizontal, IHSpacing.medium)
                .padding(.top, IHSpacing.large)
                .padding(.bottom, 100)
            }

            primaryCTA
        }
        .background(IHColor.Surface.neutralWeakest)
        .navigationBarTitleDisplayMode(.inline)
    }

    private var primaryCTA: some View {
        VStack(spacing: 0) {
            NavigationLink {
                GetCarePlaceholder()
            } label: {
                IHButton.TitleChrome(title: "Get care now", variant: .primary)
            }
            .buttonStyle(.plain)
            .padding(.horizontal, IHSpacing.medium)
            .padding(.vertical, IHSpacing.medium)
            .background(IHColor.Surface.neutralWeakest)
            .ihElevation(.two)
        }
    }

    private func secondaryRow<Destination: View>(
        title: String,
        subtitle: String,
        @ViewBuilder destination: () -> Destination
    ) -> some View {
        NavigationLink {
            destination()
        } label: {
            IHCard(surface: .neutralBase, elevation: .one) {
                VStack(alignment: .leading, spacing: IHSpacing.xSmall) {
                    Text(title)
                        .font(IHTypography.title4())
                        .foregroundStyle(IHColor.Ink.primaryDark)
                    Text(subtitle)
                        .font(IHTypography.body2Medium())
                        .foregroundStyle(IHColor.Ink.secondary)
                }
            }
        }
        .buttonStyle(.plain)
    }
}

#Preview {
    NavigationStack {
        HomeScreen()
    }
}
