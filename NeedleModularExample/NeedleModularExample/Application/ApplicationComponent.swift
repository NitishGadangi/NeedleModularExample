import NeedleFoundation
import Chat
import ChatInterfaces
import AuthTabBar
import Core

final class ApplicationComponent: BootstrapComponent {
    var rootViewController: UIViewController {
        shared {
            ViewController(authTabBarCoordinatorAssembly: authTabBarCoordinatorAssembly)
        }
    }

    var authTabBarCoordinatorAssembly: IAuthTabBarCoordinatorAssembly {
        AuthTabBarCoordinatorAssembly {
            AuthTabBarCoordinatorComponent(dependencies: self)
        }
    }
}

extension ApplicationComponent: AuthTabBarCoordinatorDependency {
    var chatCoordinatorAssembly: IChatCoordinatorAssembly {
        ChatCoordinatorAssembly {
            ChatCoordinatorComponent(dependencies: self)
        }
    }
}

extension ApplicationComponent: ChatCoordinatorDependency {
    var logger: ILogger {
        shared { Logger() }
    }
}
