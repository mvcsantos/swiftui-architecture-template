//
//  MainInteractor.swift
//  ExampleProject
//
//  Created by Marcus Santos on 15/08/2021.
//

import Foundation

class MainInteractor {

    var state: MainState
    var coordinator: MainCoordinatorType

    init(
        state: MainState,
        coordinator: MainCoordinatorType
    ) {

        self.state = state
        self.coordinator = coordinator
    }
}

extension MainInteractor:  MainInteractorType {

    func wantsToNavigateToEmptyView() {
        coordinator.presentView()
    }
}
