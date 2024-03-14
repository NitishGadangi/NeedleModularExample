import Foundation

protocol IChatAssembly {
    func assemble() -> UIViewController
}

class ChatAssembly: IChatAssembly {
    
    private let componentProvider: () -> (IChatComponent)
    
    init(componentProvider: @escaping () -> (IChatComponent)) {
        self.componentProvider = componentProvider
    }
    
    func assemble() -> UIViewController {
        let component = componentProvider()
        withUnsafePointer(to: component.logger) { address in
            print("\(type(of: self)) - \(address)")
        }
        let presenter = ChatPresenter(scope: component, logger: component.logger, chatService: component.chatService)
        let viewController = ChatViewController(presenter: presenter)
        return viewController
    }
}
