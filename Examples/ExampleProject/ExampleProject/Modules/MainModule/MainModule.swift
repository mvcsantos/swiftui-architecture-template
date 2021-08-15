//
//  MainModule.swift
//  ExampleProject
//
//  Created by Marcus Santos on 15/08/2021.
//

import SwiftUI

class MainModule {
    let counterModule: CounterModuleType

    init(counterModule: CounterModuleType) {
        self.counterModule = counterModule
    }
}

extension MainModule:  MainModuleType {

    func createMainView() -> AnyView {
        let state = MainState()
        let coordinator = MainCoordinator(counterModule: counterModule)
        let interactor = MainInteractor(state: state, coordinator: coordinator)
        let view = MainView(state: state, interactor: interactor)

        return AnyView(coordinator.embededNavigation(content: view))
    }
}
