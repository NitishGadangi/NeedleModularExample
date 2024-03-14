import Foundation

protocol IChatListAssembly {
    func assemble() -> UIViewController
}

class ChatListAssembly: IChatListAssembly {
    
    private let componentProvider: () -> (IChatListComponent)
    
    init(componentProvider: @escaping () -> (IChatListComponent)) {
        self.componentProvider = componentProvider
    }
    
    func assemble() -> UIViewController {
        let component = componentProvider()
        withUnsafePointer(to: component.logger) { address in
            print("\(type(of: self)) - \(address)")
        }
        let presenter = ChatListPresenter(scope: component, logger: component.logger, chatService: component.chatService)
        let viewController = ChatListViewController(presenter: presenter)
        return viewController
    }
}
