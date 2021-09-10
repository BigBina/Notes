protocol CanFly{
    func fly()
}

class Bird{
    
    var isFemale = true
    
    func layEgg(){
        if (isFemale){
            print("The bird lays eggs")
        }
    }
    func fly(){
        print("The bird Flaps it wings")
    }
    
    
    
}

class Eagle: Bird, CanFly{
    func soar() {
        print("This bird soars in the sky so high")
    }
}

struct Airplane: CanFly{
    func fly(){ // override is a way to change the function fly that we inherited from Bird
        print("The aiplane uses an engine to fly")
    }
}

class Penguin: Bird{
    func swim(){
        print("Swim in water")
        
    }
}

let myEagle = Eagle()
let myPenguin = Penguin()
let myAirplane = Airplane()





