import Foundation

class ApplicationCoordinatorAssembly {
    init() {}
    
    func assemble() -> IApplicationCoordinator {
        let component = ApplicationComponent()
        print(type(of: self))
        return ApplicationCoordinator(
            scope: component,
            authTabBarCoordinatorAssembly: component.authTabBarCoordinatorAssembly
        )
    }
}
