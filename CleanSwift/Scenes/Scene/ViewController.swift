import UIKit

final class ViewController: UIViewController, DisplayLogic {

    // MARK: Private properties

    private let interactor: BusinessLogic
    private let router: RoutingLogic

    // MARK: Private UI elements

    private let label: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    // MARK: Init

    init(interactor: BusinessLogic, router: RoutingLogic) {
        self.interactor = interactor
        self.router = router
        super.init(nibName: nil, bundle: nil)
    }

    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    // MARK: Life cycle

    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(label)

        view.backgroundColor = .systemBackground

        label.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
        label.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        label.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true

        interactor.requestInitForm(Models.InitForm.Request())
    }

    // MARK: DisplayLogic

    func displayInitForm(_ viewModel: Models.InitForm.ViewModel) {
        label.text = viewModel.labelText
        label.backgroundColor = viewModel.randomColor
        router.routeToNext() { [weak self] in
            self?.interactor.requestInitForm(Models.InitForm.Request())
        }
    }
}
