protocol LifeSupport {
    func performCPR() // Protocols have
}

class EmergencyCallHandler {
    var delegate: LifeSupport?
    
    func assessSituation(){
        print("Tell me what happened, Are you ok?")
    }
    
    func medicalEmergency(){
        delegate?.performCPR()
    }
}

struct Paramedic: LifeSupport{
    
    init(handler: EmergencyCallHandler){
        handler.delegate = self
    }
    
    func performCPR() {
        print("The Paramedic does chest compression, 30 per second.")
    }
    
    
}

let emilio = EmergencyCallHandler()
let pete = Paramedic(handler: emilio)


