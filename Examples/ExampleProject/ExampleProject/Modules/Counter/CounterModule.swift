//
//  CounterModule.swift
//  ExampleProject
//
//  Created by Marcus Santos on 14/08/2021.
//

import SwiftUI

class CounterModule {

    init() {}
}

extension CounterModule: CounterModuleType {

    func createCounterView(startCounterAt value: Int) -> AnyView {
        let state = CounterState(counter: value)
        let interactor = CounterInteractor(state: state)
        let view = CounterView(state: state, interactor: interactor)

        return AnyView(view)
    }
}
