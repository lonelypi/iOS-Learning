import UIKit

var pizzaInInches: Int = 10 {
    willSet {
        
    }
    didSet {
        if pizzaInInches >= 18 {
            print("Invalid size specified, pizzaInInches set to 18.")
            pizzaInInches = 18
        }
    }
}

pizzaInInches = 33
print(pizzaInInches)

var numberOfPeople: Int = 12
let slicesPerPerson: Int = 4

//Metodo mais simples:
//var numberOfSlices: Int {  //Computed properties must be Var and explicit data type.
//    return pizzaInInches - 4
//}

var numberOfSlices: Int {
    get {
        return pizzaInInches - 4
    }
    set {
        print("numberOfSlices now has a new value which is: \(newValue)")
    }
}

var numberOfPizza: Int {
    get {
        let numberOfPeopleFedPerPizza = numberOfSlices / slicesPerPerson
        return numberOfPeople / numberOfPeopleFedPerPizza
    }
    set {
        let totalSlices = numberOfSlices * newValue
        numberOfPeople = totalSlices / slicesPerPerson
    }
}



numberOfPizza = 4
print("Numero de pessoas que posso alimentar: \(numberOfPeople)")
