//
//  CounterView.swift
//  ExampleProject
//
//  Created by Marcus Santos on 14/08/2021.
//

import SwiftUI

struct CounterView: View {

    @ObservedObject var state: CounterState
    var interactor: CounterInteractorType

    var body: some View {
        Text("Counter: \(state.counter)")
            .padding(.bottom, 10)
        Button("Increment") {
            interactor.incrementCounter()
        }
    }
}

#if DEBUG
struct CounterView_Previews: PreviewProvider {

    class MockInteractor: CounterInteractorType {

        var state: CounterState

        init(state: CounterState) {

            self.state = state
        }

        func incrementCounter() {}
    }

    static var previews: some View {
        let state = CounterState()
        let interactor = MockInteractor(state: state)
        let view = CounterView(state: state, interactor: interactor)

        return view
    }
}
#endif
