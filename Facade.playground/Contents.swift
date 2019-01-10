// Facade Design Pattern

class FruitShop {
    func buyFruits() -> String {
        return "Fruits"
    }
}

class MeetShop {
    func buyMeet() -> String {
        return "Meet"
    }
}

class MilkShop {
    func buyMilk() -> String {
        return "Milk"
    }
}

class SweetShop {
    func buySweets() -> String {
        return "Sweets"
    }
}

class BreadShop {
    func buyBread() -> String {
        return "Bread"
    }
}

// Facade
class Supermarket {
    private let fruitShop = FruitShop()
    private let meetShop = MeetShop()
    private let milkShop = MilkShop()
    private let sweetShop = SweetShop()
    private let breadShop = BreadShop()
    
    func buyProducts() -> String {
        var products = ""
        products += fruitShop.buyFruits() + ", "
        products += meetShop.buyMeet() + ", "
        products += milkShop.buyMilk() + ", "
        products += sweetShop.buySweets() + ", "
        products += breadShop.buyBread()
        return "I bought: " + products
    }
}

let sm = Supermarket()
sm.buyProducts()
