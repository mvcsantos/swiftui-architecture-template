//___FILEHEADER___

import SwiftUI

class ___FILEBASENAMEASIDENTIFIER___ {

    init() {}
}

extension ___FILEBASENAMEASIDENTIFIER___ {

    func create___VARIABLE_productName:identifier___View() -> AnyView {
        let state = ___VARIABLE_productName:identifier___State()
        let coordinator = ___VARIABLE_productName:identifier___Coordinator()
        let interactor = ___VARIABLE_productName:identifier___Interactor(state: state, coordinator: coordinator)
        let view = ___VARIABLE_productName:identifier___View(state: state, interactor: interactor)

        return AnyView(coordinator.embededNavigation(content: view))
    }
}
