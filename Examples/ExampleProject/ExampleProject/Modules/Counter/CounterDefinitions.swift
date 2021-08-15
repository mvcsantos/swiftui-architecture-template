//
//  CounterDefinitions.swift
//  ExampleProject
//
//  Created by Marcus Santos on 14/08/2021.
//

import Foundation
import SwiftUI

protocol CounterInteractorType: AnyObject {
    func incrementCounter()
}

protocol CounterModuleType {
    func createCounterView(startCounterAt value: Int) -> AnyView
}
