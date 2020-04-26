//___FILEHEADER___

import SwiftUI

struct ___FILEBASENAMEASIDENTIFIER___: View {

    @ObservedObject var state: ___VARIABLE_productName:identifier___State
    var delegate: ___FILEBASENAMEASIDENTIFIER___Delegate?

    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

#if DEBUG
struct ___FILEBASENAMEASIDENTIFIER____Previews: PreviewProvider {

    static var previews: some View {
        let interactor = ___VARIABLE_productName:identifier___Interactor()
        var view = ___FILEBASENAMEASIDENTIFIER___(state: interactor.state)
        view.delegate = interactor

        return view
    }
}
#endif
