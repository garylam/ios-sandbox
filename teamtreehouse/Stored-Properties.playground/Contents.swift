//: Playground - noun: a place where people can play

import UIKit

class Product{
    let title: String
    let price: Double
    
    init(title:String, price:Double) {
        self.title = title
        self.price = price
    }
    
    func discountedPrice(percentage:Double) -> Double{
        return price - (price * percentage / 100)
    }
}

class Furniture: Product{
    let height: Double
    var width: Double
    var length: Double
    var surfaceArea:Double {
        get{
            return width * length
        }
        set{
            width = sqrt(newValue)
            length = sqrt(newValue)
        }
    }
    
    init(title:String, price:Double, height: Double, width:Double, length:Double){
        self.height = height
        self.width = width
        self.length = length
        super.init(title:title, price:price)
    }
}

let table = Furniture(title:"Coffee Table", price: 300, height: 5, width: 10, length: 10)
table.surfaceArea
table.surfaceArea = 144
table.width
table.length
table.surfaceArea

class Electronic: Product{
    var batteries: Bool?
}

let toy = Electronic(title: "RC Car", price: 79)

if let batteries = toy.batteries{
    if batteries {
        println("Batteries included")
    }
}


class Shape{
    var sides:Double = 0.0
    var name:String = ""
    
    init(sides:Double,name:String){
        self.sides = sides
        self.name = name
    }
}

class Square:Shape{
    var sideLength:Double = 0.0
    var area:Double {
        get{
            return sideLength * sideLength
        }
        set{
            sideLength = sqrt(newValue)
        }
    }
    
    init(sides:Double,name:String,sideLength:Double){
        self.sideLength = sideLength
        super.init(sides: sides,name: name)
    }
    
    convenience init(sideLength:Double){
        self.init(sides:4, name:"Square", sideLength: sideLength)
    }
    
}

var square = Square(sideLength:10)
square
square.area
square.sideLength
square.name
square.area = 400
square.sideLength



