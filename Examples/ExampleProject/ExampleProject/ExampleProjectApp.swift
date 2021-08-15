//
//  ExampleProjectApp.swift
//  ExampleProject
//
//  Created by Marcus Santos on 14/08/2021.
//

import SwiftUI

@main
struct ExampleProjectApp: App {

    private var mainModule: MainModuleType {
        MainModule(counterModule: counterModule)
    }

    private var counterModule: CounterModuleType {
        CounterModule()
    }

    var body: some Scene {
        WindowGroup {
            mainModule.createMainView()
        }
    }
}
