//
//  FactBook.swift
//  FunFacts
//
//  Created by Lam, Gary on 10/30/15.
//  Copyright (c) 2015 Treehouse. All rights reserved.
//

import Foundation

struct FactBook{
    let factsArray = [
        "Ants stretch when they wake up in the morning.",
        "Ostriches can run faster tan horses.",
        "Olympic gold medals are actually mostly made of silver.",
        "You are born with 300 bones; by the time you are an adult you will have 206.",
        "It takes about 8 minutes for light from the Sun to reach Earth.",
        "Some bamboo plants can grow almost a meter in just one day.",
        "Some penguins can leap 2-3 meters out of hte water.",
        "The state of Florida is bigger than England.",
        "On average, it takes 66 days to form a new habit.",
        "Mammoths still walked the earth when the Great Pyramid was being build."
    ]
    
    func randomFact()-> String{
        return factsArray[Int(arc4random_uniform(UInt32(factsArray.count)))]
    }
}