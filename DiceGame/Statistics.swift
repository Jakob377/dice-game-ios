//
//  Statistics.swift
//  DiceGame
//
//  Created by Code Nation on 26/11/2019.
//  Copyright © 2019 Jakob Walsh. All rights reserved.
//

import Foundation

var timesPlayed = 0.0
var timesWon = 0.0
var successRate = 0.0

func timesPlayedCounter() {
    timesPlayed += 1
    if (timesPlayed == 1){
        print("You have had \(Int(timesPlayed)) attempt.")
    }
    else {
        print("You have had \(Int(timesPlayed)) attempts.")
    }
}

func timesWonCounter() {
    timesWon += 1
    
    if(timesWon == 0) {
        print(" Cobra, you must try harder.")
    }
    else {
        print("This isnt Cobra, you are good at this game. You have won \(timesWon) time(s).")
    }
}

func successRateCounter() {
    successRate = ((timesWon / timesPlayed) * 100).rounded(.toNearestOrEven)
    print("\(successRate)%")
}
