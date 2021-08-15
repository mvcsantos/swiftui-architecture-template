//
//  CounterInteractor.swift
//  ExampleProject
//
//  Created by Marcus Santos on 14/08/2021.
//

import Foundation

class CounterInteractor {

    var state: CounterState

    init(state: CounterState) {

        self.state = state
    }
}

extension CounterInteractor: CounterInteractorType {
    func incrementCounter() {
        state.counter += 1
    }
}
