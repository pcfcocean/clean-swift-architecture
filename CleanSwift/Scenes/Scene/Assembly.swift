import UIKit

enum Assembly {
    static func build(config: Models.Config) -> UIViewController {

        let worker = Worker()

        let presenter = Presenter()

        let interactor = Interactor(
            presenter: presenter,
            worker: worker
        )

        let router = Router(dataStore: interactor)

        let viewController = ViewController(interactor: interactor, router: router)

        presenter.view = viewController
        router.viewController = viewController

        return viewController
    }
}
