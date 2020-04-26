//___FILEHEADER___

import SwiftUI

class ___FILEBASENAMEASIDENTIFIER___ {

    @ObservedObject var state: ___VARIABLE_productName:identifier___State
    var delegate: ___FILEBASENAMEASIDENTIFIER___Delegate?

    init() {

        self.state = ___VARIABLE_productName:identifier___State()
    }
}

extension ___FILEBASENAMEASIDENTIFIER___: ___VARIABLE_productName:identifier___ViewDelegate {

    func wantsToNavigateToEmptyView() -> EmptyView {

        guard let delegate = self.delegate else { fatalError("Delegate not set") }
        return delegate.navigateToEmptyView()
    }
}
