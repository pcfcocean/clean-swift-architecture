import Foundation

final class Worker: WorkerLogic {

    // MARK: WorkerLogic

    func fetch(completion: @escaping (_ uuidString: String) -> Void) {
        DispatchQueue.global().async {
            completion(UUID().uuidString)
        }
    }
}
