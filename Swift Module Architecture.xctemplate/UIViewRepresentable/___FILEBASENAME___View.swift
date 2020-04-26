//___FILEHEADER___

import SwiftUI

final class ___FILEBASENAMEASIDENTIFIER___: UIViewRepresentable {

    @ObservedObject var state: ___VARIABLE_productName:identifier___State
    var delegate: ___FILEBASENAMEASIDENTIFIER___Delegate?

    init(state: ___VARIABLE_productName:identifier___State, delegate: ___FILEBASENAMEASIDENTIFIER___Delegate? = nil) {
        self.state = state
        self.delegate = delegate
    }

    func makeCoordinator() -> Coordinator {
        return Coordinator(parent: self)
    }

    func updateUIView(_ uiView: UIView, context: UIViewRepresentableContext<___FILEBASENAMEASIDENTIFIER___>) {

    }

    func makeUIView(context: UIViewRepresentableContext<___FILEBASENAMEASIDENTIFIER___>) -> UIView {
//        let view = SomeView(settings: state.cameraSettings)
//        view.delegate = self.delegate

        return UIView()
    }

    class Coordinator: NSObject {
        let parent: ___FILEBASENAMEASIDENTIFIER___
        init(parent: ___FILEBASENAMEASIDENTIFIER___) {
            self.parent = parent
        }
    }
}

#if DEBUG
struct ___FILEBASENAMEASIDENTIFIER____Previews: PreviewProvider {

    static var previews: some View {
        let interactor = ___VARIABLE_productName:identifier___Interactor()
        let view = ___FILEBASENAMEASIDENTIFIER___(state: interactor.state)
        view.delegate = interactor

        return view
    }
}
#endif
