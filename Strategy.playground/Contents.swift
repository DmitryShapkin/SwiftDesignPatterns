// Strategy Design Pattern

protocol SwimBehavior {
    func swim()
}

class ProfessionalSwimmer: SwimBehavior {
    func swim() {
        print("Professional Swimming")
    }
}

class NonSwimmer: SwimBehavior {
    func swim() {
        print("Non-Swimming")
    }
}

protocol DiveBehavior {
    func dive()
}

class ProfessionalDiver: DiveBehavior {
    func dive() {
        print("Professional Diving")
    }
}

class NewbieDiver: DiveBehavior {
    func dive() {
        print("Newbie Diving")
    }
}

class NonDiver: DiveBehavior {
    func dive() {
        print("Non-Diving")
    }
}

class Human {
    private var diveBehavior: DiveBehavior
    private var swimBehavior: SwimBehavior
    
    func performSwim() {
        swimBehavior.swim()
    }
    
    func performDive() {
        diveBehavior.dive()
    }
    
    func setSwimBehavior(sb: SwimBehavior) {
        self.swimBehavior = sb
    }
    
    func setDiveBehavior(db: DiveBehavior) {
        self.diveBehavior = db
    }
    
    init(swimBehavior: SwimBehavior, diveBehavior: DiveBehavior) {
        self.swimBehavior = swimBehavior
        self.diveBehavior = diveBehavior
    }
}

let human = Human(swimBehavior: NonSwimmer(), diveBehavior: NewbieDiver())
human.setDiveBehavior(db: NonDiver())
human.performDive()
