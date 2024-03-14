import Foundation
import Core
import ChatInterfaces

class ChatCoordinator: BaseCoordinator, IChatCoordinator {
    private let chatListAssembly: IChatListAssembly
    private let chatAssembly: IChatAssembly
    
    init(scope: Any, chatListAssembly: IChatListAssembly, chatAssembly: IChatAssembly) {
        self.chatListAssembly = chatListAssembly
        self.chatAssembly = chatAssembly
        chatAssembly.assemble()
        chatListAssembly.assemble()
        super.init(scope: scope)
    }
}
