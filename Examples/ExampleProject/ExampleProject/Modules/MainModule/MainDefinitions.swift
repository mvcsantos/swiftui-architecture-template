//
//  MainDefinitions.swift
//  ExampleProject
//
//  Created by Marcus Santos on 15/08/2021.
//

import SwiftUI

protocol MainModuleType: AnyObject {
    func createMainView() -> AnyView
}

protocol MainInteractorType: AnyObject {
    func wantsToNavigateToEmptyView()
}

protocol MainCoordinatorType: AnyObject {

    func presentView()
}
