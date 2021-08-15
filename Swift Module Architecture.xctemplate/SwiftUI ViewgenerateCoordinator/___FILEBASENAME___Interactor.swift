//___FILEHEADER___

import Foundation

class ___FILEBASENAMEASIDENTIFIER___ {

    var state: ___VARIABLE_productName:identifier___State
    var coordinator: ___VARIABLE_productName:identifier___CoordinatorType

    init(
        state: ___VARIABLE_productName:identifier___State,
        coordinator: ___VARIABLE_productName:identifier___CoordinatorType
    ) {

        self.state = state
        self.coordinator = coordinator
    }
}

extension ___FILEBASENAMEASIDENTIFIER___:  ___VARIABLE_productName:identifier___InteractorType {

    func wantsToNavigateToEmptyView() {
        coordinator.presentView()
    }
}
