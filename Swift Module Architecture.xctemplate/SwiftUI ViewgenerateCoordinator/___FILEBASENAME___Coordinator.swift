//___FILEHEADER___

import SwiftUI

class ___FILEBASENAMEASIDENTIFIER___ {

    @ObservedObject var state = CoordinatorState()

    init() {}

    @ViewBuilder func embededNavigation<Content: View>(content: Content) -> some View {
        content.modifier(NavigatableModifier(coordinatorState: self.state))
    }

    class CoordinatorState: ObservableObject {
        @Published var shouldNavigate: Bool = false
        var destinationView: AnyView = AnyView(EmptyView())
    }

    private struct NavigatableModifier: ViewModifier {
        @ObservedObject var coordinatorState: CoordinatorState

        func body(content: Self.Content) -> some View {
            NavigationView {
                ZStack {
                    NavigationLink(
                        "",
                        destination: self.coordinatorState.destinationView,
                        isActive: self.$coordinatorState.shouldNavigate
                    ).hidden()
                    content
                }
            }.navigationViewStyle(StackNavigationViewStyle())
        }
    }
}
extension ___FILEBASENAMEASIDENTIFIER___: ___VARIABLE_productName:identifier___CoordinatorType {

    func presentView() {

        state.destinationView = AnyView(Text("Hello from the other side!"))
        state.shouldNavigate = true
    }
}
