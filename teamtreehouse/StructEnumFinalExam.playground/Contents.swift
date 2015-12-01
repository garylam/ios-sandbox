//: Playground - noun: a place where people can play

import UIKit


struct Task{
    var description:String
    var status:status
    
    init(description:String, status:status){
        self.description = description
        self.status = status
    }
    
}

enum status{
    case Doing, Pending, Complete
}

