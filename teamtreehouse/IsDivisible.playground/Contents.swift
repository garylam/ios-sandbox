//: Playground - noun: a place where people can play

import UIKit

func isDivisible(#num1: Int, #num2: Int) -> Bool?{
    if num1 % num2 == 0 {
        return true
    }
    return nil
}

if let divisible = isDivisible(num1:30, num2:4){
    println("Is Divisible")
} else{
    println("Not Divisible")
}
