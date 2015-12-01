//: Playground - noun: a place where people can play

import UIKit

func sendNoticeTo(#aptNumber:Int){
    
}

func findApt(aptNumber:String) -> String? {
    let aptNumbers = ["101","202","303","404"]
    for tempAptNumber in aptNumbers {
        if (tempAptNumber == aptNumber){
            return aptNumber
        }
    }

    return nil
}

let result = findApt("101")
result
result!


if let culprit = findApt("404"){
    if let aptNumber = culprit.toInt(){
        sendNoticeTo(aptNumber:aptNumber)
    }
}

if let culprit = findApt("404")?.toInt(){
    sendNoticeTo(aptNumber:culprit)
}

