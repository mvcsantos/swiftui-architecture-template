//
//  MainView.swift
//  ExampleProject
//
//  Created by Marcus Santos on 15/08/2021.
//

import SwiftUI

struct MainView: View {

    @ObservedObject var state: MainState
    var interactor: MainInteractorType

    var body: some View {
        Button("Navigate to Counter screen") {
            interactor.wantsToNavigateToEmptyView()
        }
    }
}

#if DEBUG
struct MainView_Previews: PreviewProvider {

    class MockInteractor: MainInteractorType {

        init() {}

        func wantsToNavigateToEmptyView() {}
    }

    static var previews: some View {
        let state = MainState()
        let interactor = MockInteractor()
        let view = MainView(state: state, interactor: interactor)

        return view
    }
}
#endif
