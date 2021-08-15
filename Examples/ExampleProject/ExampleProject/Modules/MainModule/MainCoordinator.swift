//
//  MainCoordinator.swift
//  ExampleProject
//
//  Created by Marcus Santos on 15/08/2021.
//

import SwiftUI

class MainCoordinator {

    private let counterModule: CounterModuleType
    @ObservedObject var state = CoordinatorState()

    init(counterModule: CounterModuleType) {
        self.counterModule = counterModule
    }

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
extension MainCoordinator: MainCoordinatorType {

    func presentView() {

        let counterView = self.counterModule.createCounterView(startCounterAt: 0)
        state.destinationView = AnyView(counterView)
        state.shouldNavigate = true
    }
}
