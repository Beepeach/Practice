//: [Previous](@previous)

import Foundation

var str = "Hello, playground"

class Transfortation {
    let capacity = 50
}
//: [Next](@next)

class Bus: Transfortation {
    
}

class Taxi: Transfortation {
    
}

class MBus: Bus {
    
}

let tran = Transfortation()

let bus1 = Bus()
let bus2: Transfortation = Bus()
let mbus = MBus()

let taxi = Taxi()
let taxi2: Transfortation = Taxi()

//bus2 as! Taxi
taxi2 as! Taxi
bus1 as! MBus



