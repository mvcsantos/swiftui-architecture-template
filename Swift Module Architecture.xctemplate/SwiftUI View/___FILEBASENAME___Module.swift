//___FILEHEADER___

import SwiftUI

class ___FILEBASENAMEASIDENTIFIER___ {

    init() {}
}

extension ___FILEBASENAMEASIDENTIFIER___: ___FILEBASENAMEASIDENTIFIER___Type {

    func create___VARIABLE_productName:identifier___View() -> AnyView {
        let state = ___VARIABLE_productName:identifier___State(someText: "Hello World!")
        let interactor = ___VARIABLE_productName:identifier___Interactor(state: state)
        let view = ___VARIABLE_productName:identifier___View(state: state, interactor: interactor)

        return AnyView(view)
    }
}
