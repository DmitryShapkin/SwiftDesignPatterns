// Proxy Design Pattern

class User {
    let name = "Petr"
    let password = "123"
}

protocol ServerProtocol {
    func grantAccess(user: User)
}

class ServerSide: ServerProtocol {
    func grantAccess(user: User) {
        print("Acceess granted to user with name = \(user.name)")
    }
}

class ServerProxy: ServerProtocol {
    
    private var server: ServerSide!
    
    func grantAccess(user: User) {
        guard server != nil else {
            print("Access can't be granted")
            return
        }
        server.grantAccess(user: user)
    }
    
    func authenticate(user: User) {
        guard user.password == "123" else { return }
        print("User authenticated")
        server = ServerSide()
    }
}

let user = User()
let proxy = ServerProxy()
proxy.authenticate(user: user)
proxy.grantAccess(user: user)
