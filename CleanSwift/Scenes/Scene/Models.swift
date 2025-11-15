import UIKit

enum Models {

    struct Config {}

    enum InitForm {
        struct Request {}
        struct Response {
            let ranodomAlpha: CGFloat
        }
        struct ViewModel {
            let labelText: String
            let randomColor: UIColor
        }
    }
}
