//___FILEHEADER___

import SwiftUI

struct ___FILEBASENAMEASIDENTIFIER___: View {

    @ObservedObject var state: ___VARIABLE_productName:identifier___State
    var interactor: ___VARIABLE_productName:identifier___InteractorType

    var body: some View {
        Text(state.someText)
    }
}

#if DEBUG
struct ___FILEBASENAMEASIDENTIFIER____Previews: PreviewProvider {

    class MockInteractor: ___VARIABLE_productName:identifier___InteractorType {
        var state: ___VARIABLE_productName:identifier___State

        init(state: ___VARIABLE_productName:identifier___State) {

            self.state = state
        }
    }

    static var previews: some View {
        let state = ___VARIABLE_productName:identifier___State()
        let interactor = MockInteractor(state: state)
        let view = ___VARIABLE_productName:identifier___View(state: state, interactor: interactor)

        return view
    }
}
#endif
