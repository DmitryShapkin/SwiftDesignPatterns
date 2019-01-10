// Adapter Design Patter

// Create adaptee

class SimpleCar {
    func sound() -> String {
        return "tr-tr-tr-tr"
    }
}

// Create target
protocol SuperCarProtocol {
    func makeNoise() -> String
}

class SuperCar: SuperCarProtocol {
    func makeNoise() -> String {
        return "wroom-wroom"
    }
}

// Create adapter
class SuperCarAdapter: SuperCarProtocol {
    
   var simpleCar: SimpleCar
    
    init(simpleCar: SimpleCar) {
        self.simpleCar = simpleCar
    }
    
    func makeNoise() -> String {
        return simpleCar.sound()
    }
}

let simpleCar = SimpleCar()
let adapteeTest = SuperCarAdapter(simpleCar: simpleCar)
adapteeTest.makeNoise()
