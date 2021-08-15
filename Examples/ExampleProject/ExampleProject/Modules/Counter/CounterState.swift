//
//  CounterState.swift
//  ExampleProject
//
//  Created by Marcus Santos on 14/08/2021.
//

import Foundation

class CounterState: ObservableObject {

    @Published var counter: Int

    init(counter: Int = 0) {

        self.counter = counter
    }
}
