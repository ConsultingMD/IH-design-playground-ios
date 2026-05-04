import SwiftUI

struct NavigationRoot: View {
    var body: some View {
        NavigationStack {
            HomeScreen()
        }
    }
}

#Preview {
    NavigationRoot()
}
