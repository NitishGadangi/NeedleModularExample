import Foundation

class ApplicationCoordinatorAssembly {
    init() {}
    
    func assemble() -> IApplicationCoordinator {
        let component = ApplicationComponent()
        print("ApplicationCoordinatorAssembly \(component.logger)")
        return ApplicationCoordinator(
            scope: component,
            authTabBarCoordinatorAssembly: component.authTabBarCoordinatorAssembly
        )
    }
}
