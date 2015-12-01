//: Playground - noun: a place where people can play

import UIKit

println("Swift Functions")

func calculateArea(#height: Int, #width: Int) -> Int{
    return height * width
}

let area = calculateArea(height:1,width:2)

println("Area = \(calculateArea(height:1,width:2))")
