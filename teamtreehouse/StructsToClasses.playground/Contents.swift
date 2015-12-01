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

let quadcopter = Product(title: "quadcopter", price: 499)
quadcopter.discountedPrice(50)

enum Size{
    case Small, Medium, Large
    init(){
        self = .Small
    }
}

class Clothing: Product{
    var size = Size()
    let designer:String
    
    init (title:String, price:Double, designer: String){
        self.designer = designer
        super.init(title: title, price: price)
    }
    
    convenience init (title: String) {
        self.init(title:title, price:99, designer:"Calvin Klein")
    }
    
    override func discountedPrice(_ percentage: Double = 10.0) -> Double {
        return super.discountedPrice(percentage)
    }
}

var tshirt = Clothing(title:"Vintage", price: 49.99, designer:"Prada")
var tshirt2 = Clothing(title:"Vintage")
tshirt.title
tshirt.price
tshirt.discountedPrice(10)
tshirt.size

tshirt2.designer






//let quadcopter = Product()
//quadcopter.title
//quadcopter.price
//
//quadcopter.title = "Quadcopter"
//quadcopter.price = 499.99
