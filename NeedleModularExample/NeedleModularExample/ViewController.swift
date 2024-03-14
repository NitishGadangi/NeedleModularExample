import UIKit
import AuthTabBar
import Core

class ViewController: UIViewController {

    init(authTabBarCoordinatorAssembly: IAuthTabBarCoordinatorAssembly, logger: ILogger) {
        let authCoordinator = authTabBarCoordinatorAssembly.assemble()
        authCoordinator.setup()
        super.init(nibName: nil, bundle: nil)
        withUnsafePointer(to: logger) { address in
            print("\(type(of: self)) - \(address)")
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .blue
    }
}

