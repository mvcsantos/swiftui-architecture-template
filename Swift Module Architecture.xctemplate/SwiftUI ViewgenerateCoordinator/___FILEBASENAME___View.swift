//___FILEHEADER___

import SwiftUI

struct ___FILEBASENAMEASIDENTIFIER___: View {

    @ObservedObject var state: ___VARIABLE_productName:identifier___State
    var interactor: ___VARIABLE_productName:identifier___InteractorType

    var body: some View {
        Button("Navigate") {
            interactor.wantsToNavigateToEmptyView()
        }
    }
}

#if DEBUG
struct ___FILEBASENAMEASIDENTIFIER____Previews: PreviewProvider {

    class MockInteractor: ___VARIABLE_productName:identifier___InteractorType {

        init() {}

        func wantsToNavigateToEmptyView() {}
    }

    static var previews: some View {
        let state = ___VARIABLE_productName:identifier___State()
        let interactor = MockInteractor()
        let view = ___VARIABLE_productName:identifier___View(state: state, interactor: interactor)

        return view
    }
}
#endif
