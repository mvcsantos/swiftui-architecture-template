//
//  MainState.swift
//  ExampleProject
//
//  Created by Marcus Santos on 15/08/2021.
//

import Foundation

class MainState: ObservableObject {

    @Published var someText: String

    init(someText: String = "") {

        self.someText = someText
    }
}
