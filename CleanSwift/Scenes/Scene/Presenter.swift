import UIKit

final class Presenter: PresentationLogic {

    // MARK: Properties

    weak var view: DisplayLogic?

    // MARK: - PresentationLogic

    func presentInitForm(_ response: Models.InitForm.Response) {
        let randomColor = UIColor(
            red: CGFloat.random(in: 0...1),
            green: CGFloat.random(in: 0...1),
            blue: CGFloat.random(in: 0...1),
            alpha: response.ranodomAlpha
        )

        let viewModel = Models.InitForm.ViewModel(
            labelText: "RANDOM",
            randomColor: randomColor
        )

        view?.displayInitForm(viewModel)
    }
}
