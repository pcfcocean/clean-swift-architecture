import UIKit

final class Router: RoutingLogic {

    // MARK: Properties

    weak var viewController: UIViewController?

    private let dataStore: DataStore

    // MARK: - Init
    init(dataStore: DataStore) {
        self.dataStore = dataStore
    }

    func routeToNext(completion: @escaping () -> Void) {
        let alertViewController = UIAlertController(
            title: "App is done",
            message: dataStore.dataStoreProperty,
            preferredStyle: .alert
        )
        let alertAction = UIAlertAction(
            title: "exit",
            style: .destructive,
            handler: { _ in
                completion()
            }
        )
        alertViewController.addAction(alertAction)
        viewController?.present(alertViewController, animated: true)
    }
}
