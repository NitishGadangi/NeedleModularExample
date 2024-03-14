import UIKit
import AuthTabBar

class ViewController: UIViewController {

    init(authTabBarCoordinatorAssembly: IAuthTabBarCoordinatorAssembly) {
        let authCoordinator = authTabBarCoordinatorAssembly.assemble()
        authCoordinator.setup()
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .blue
    }
}

