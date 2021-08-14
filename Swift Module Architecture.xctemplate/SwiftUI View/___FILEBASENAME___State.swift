//___FILEHEADER___

import Foundation

class ___FILEBASENAMEASIDENTIFIER___: ObservableObject {

    @Published var someText: String

    init(someText: String = "") {

        self.someText = someText
    }
}
