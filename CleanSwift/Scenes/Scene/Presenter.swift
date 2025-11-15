import UIKit

final class Presenter: PresentationLogic {

    // MARK: Properties

    weak var view: DisplayLogic?

    // MARK: - PresentationLogic

    func presentInitForm(_ response: Models.InitForm.Response) {
        let randomColor = UIColor(
            red: response.ranodomNumber,
            green: response.ranodomNumber,
            blue: response.ranodomNumber,
            alpha: response.ranodomNumber
        )

        let viewModel = Models.InitForm.ViewModel(
            labelText: "RANDOM",
            randomColor: randomColor
        )

        view?.displayInitForm(viewModel)
    }
}
