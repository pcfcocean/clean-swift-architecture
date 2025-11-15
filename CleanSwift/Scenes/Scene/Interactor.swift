import Foundation

final class Interactor: BusinessLogic, DataStore {

    // MARK: DataStore

    private(set) var dataStoreProperty: String?

    // MARK: Private properties

    private let presenter: PresentationLogic
    private let worker: WorkerLogic

    // MARK: Init

    init(
        presenter: PresentationLogic,
        worker: WorkerLogic
    ) {
        self.presenter = presenter
        self.worker = worker
    }

    // MARK: BusinessLogic

    func requestInitForm(_ request: Models.InitForm.Request) {
        worker.fetch { [weak self] uuidString in
            guard let self = self else { return }
            self.dataStoreProperty = uuidString
            let ranodomAlpha = CGFloat.random(in: 0.6 ... 0.9)
            DispatchQueue.main.async {
                self.presenter.presentInitForm(Models.InitForm.Response(ranodomAlpha: ranodomAlpha))
            }
        }
    }
}
