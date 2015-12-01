//: Playground - noun: a place where people can play

import UIKit

enum Day:Int{
    case Monday = 1, Tuesday = 2, Wednesday = 3, Thursday = 4, Friday = 5, Saturday = 6, Sunday = 7

    init(){
        self = .Monday
    }
    
    func daysTillWeekend() -> Int{
        return Day.Saturday.rawValue - self.rawValue
    }
    
    func dayString() -> String {
        switch self{
        case .Monday:
            return "Monday"
        default:
            return "Other Day'"
        }
    }
}

var testDay = Day()

testDay.dayString()
testDay.daysTillWeekend()








//var today = Day.Monday
//
//
//Day.Monday.rawValue
//
//today.rawValue
//today.dayString()
//today.daysTillWeekend()
//
//
//
//
//today.daysTillWeekend()


let days = ["Monday","Tuesday","Wednesday","Thursday","Friday","Saturday","Sunday"]

Day.Monday.rawValue

Day.Monday.daysTillWeekend()

Day.Friday.daysTillWeekend()



func daysTillWeekend(day: Day) -> Int{
    return Day.Saturday.rawValue - day.rawValue
}

daysTillWeekend(.Monday)

if let firstDayOfWeek = Day(rawValue: 1){
    daysTillWeekend(firstDayOfWeek)
}

func weekdayOrWeekend(dayOfWeek: Day) -> String {

    switch dayOfWeek{
    case .Monday, .Tuesday, Day.Wednesday, Day.Thursday, Day.Friday:
        return "It's a weekday"
    case Day.Saturday, Day.Sunday:
        return "Yay! It's the weekend!"
    default:
        return "Not a valid day"
    }
}

var today = Day.Monday
today = Day.Sunday
today = .Monday


weekdayOrWeekend(Day.Sunday)

// Associated Values
enum Status{
    case Success(String), Failure(String)
}

let downloadStatus = Status.Failure("Network connection unavailable.")

switch(downloadStatus){
case .Success(let success):
    println(success)
case .Failure(let failure):
    println(failure)
}
