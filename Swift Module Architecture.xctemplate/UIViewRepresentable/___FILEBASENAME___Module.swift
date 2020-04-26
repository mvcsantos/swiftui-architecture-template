//___FILEHEADER___

import SwiftUI

class ___FILEBASENAMEASIDENTIFIER___ {

    init() {}

    func create___VARIABLE_productName:identifier___View() -> some View {

        let interactor = ___VARIABLE_productName:identifier___Interactor()

        var view = ___VARIABLE_productName:identifier___View(state: interactor.state)
        view.delegate = interactor

        return view
    }
}
