import Foundation

protocol DataStore {
    var dataStoreProperty: String? { get }
}

protocol BusinessLogic {
    func requestInitForm(_ request: Models.InitForm.Request)
}

protocol PresentationLogic {
    func presentInitForm(_ response: Models.InitForm.Response)
}

protocol DisplayLogic: AnyObject {
    func displayInitForm(_ viewModel: Models.InitForm.ViewModel)
}

protocol RoutingLogic {
    func routeToNext(completion: @escaping () -> Void)
}

protocol WorkerLogic {
    func fetch(completion: @escaping (_ uuidString: String) -> Void)
}
