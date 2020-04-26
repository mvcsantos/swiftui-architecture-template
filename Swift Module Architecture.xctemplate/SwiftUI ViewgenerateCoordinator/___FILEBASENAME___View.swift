//___FILEHEADER___

import SwiftUI

struct ___FILEBASENAMEASIDENTIFIER___: View {

    @ObservedObject var state: ___VARIABLE_productName:identifier___State
    var delegate: ___FILEBASENAMEASIDENTIFIER___Delegate?

    var body: some View {
        NavigationView {
            NavigationLink(destination: self.delegate?.wantsToNavigateToEmptyView()) {
                Text("Navigate to EmptyView")
            }
        }.navigationViewStyle(StackNavigationViewStyle())
    }
}

#if DEBUG
struct ___FILEBASENAMEASIDENTIFIER____Previews: PreviewProvider {

    static var previews: some View {

        let coordinator = ___VARIABLE_productName:identifier___Coordinator()
        let interactor = ___VARIABLE_productName:identifier___Interactor()
        interactor.delegate = coordinator
        var view = ___FILEBASENAMEASIDENTIFIER___(state: interactor.state)
        view.delegate = interactor

        return view
    }
}
#endif
