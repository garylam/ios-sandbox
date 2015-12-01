//: Playground - noun: a place where people can play

import UIKit

var distance = 21 // in miles

if distance < 5 {
    println("\(distance) miles is near")
} else if distance >= 5 && distance <= 20 {
    println("\(distance) miles is close")
} else{
    println("\(distance) miles is far")
}

// && is the AND operator
// || is the OR operator
// ! is the NOT operator

var number = 22

if (number % 3 == 0) && (number % 5 == 0) {
    println("fizz buzz")
} else if (number%3 == 0) {
    println("fizz")
} else if (number%5 == 0) {
    println("buzz")
} else{
    println(number)
}