//: Playground - noun: a place where people can play

import UIKit

struct Contact {
    var firstName: String
    var lastName: String
    var type = "Friend"
    
    init(firstName:String, lastName:String){
        self.firstName = firstName
        self.lastName = lastName
    }
    
    func fullName() -> String{
        return firstName + " " + lastName
    }
    
}


//var person = Contact(firstName: "Gary", lastName: "Lam", type: "Friend")

//var person = Contact(firstName: "Gary", lastName: "Lam")
//
////person.firstName = "Tom"
//person.firstName
//person.lastName

var person = Contact(firstName: "Tom", lastName: "Jones")
person.fullName()

person.firstName = "Gary"
person.lastName = "Lam"
person.fullName()


