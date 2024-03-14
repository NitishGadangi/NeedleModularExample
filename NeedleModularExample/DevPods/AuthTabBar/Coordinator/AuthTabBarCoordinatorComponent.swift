import NeedleFoundation
import Core
import ChatInterfaces

public protocol AuthTabBarCoordinatorDependency {
    var chatCoordinatorAssembly: IChatCoordinatorAssembly { get }
    var logger: ILogger { get }
}

protocol IAuthTabBarCoordinatorComponent {
    var chatCoordinatorAssembly: IChatCoordinatorAssembly { get }
    var logger: ILogger { get }
}

public class AuthTabBarCoordinatorComponent: BootstrapComponent, IAuthTabBarCoordinatorComponent {
    
    private let dependencies: AuthTabBarCoordinatorDependency
    
    public init(dependencies: AuthTabBarCoordinatorDependency) {
        self.dependencies = dependencies
    }
    
    var chatCoordinatorAssembly: IChatCoordinatorAssembly { dependencies.chatCoordinatorAssembly }

    var logger: ILogger { dependencies.logger }
}
