//
//  ViewController.swift
//  DiceGame
//
//  Created by Code Nation on 25/11/2019.
//  Copyright © 2019 Jakob Walsh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //MARK: Variables
    var playerScore = 0
    var randomRollIndex = 0
    var dice = [#imageLiteral(resourceName: "Kismet-Ace"), #imageLiteral(resourceName: "Kismet-Deuce"), #imageLiteral(resourceName: "Kismet-Trey"), #imageLiteral(resourceName: "Kismet-Four"), #imageLiteral(resourceName: "Kismet-Five"), #imageLiteral(resourceName: "Kismet-Six") ]
    //          0   1   2   3   4   5
    
    //MARK: outlets
    @IBOutlet weak var rulesLabel: UILabel!
    @IBOutlet weak var diceImage: UIImageView!
    @IBOutlet weak var rollButton: UIButton!
    @IBOutlet weak var resetButton: UIButton!
    
    //MARK: functions

    @IBAction func buttonFunction(_ sender: Any) {
        //print ("Button is working.")
        rollLogic()
    }
    
    @IBAction func resetButtonAction(_ sender: Any) {
        playerScore = 0
        rulesLabel.text = "\(playerScore)"
        buttonEnabled()
        resetButton.isHidden = true;
    }
    
    func rollLogic() {
        randomRollIndex = Int.random(in: 0 ... 5)
        diceImage.image = dice[randomRollIndex]
        print(randomRollIndex)
        playerScore += randomRollIndex + 1
        rulesLabel.text = "\(playerScore)"
        diceLogic()
    }
    
    func diceLogic() {
        if (randomRollIndex == 0) {
            playerScore = 0
            print("Ha. You lost.")
            buttonEnabled()
            timesPlayedCounter()
        }
        else if (playerScore >= 21) {
            playerScore = 0
            print("It cant be the cobra.")
            buttonEnabled()
            timesPlayedCounter()
            timesWonCounter()
            
        }
        else {
            return
        }
    successRateCounter()
    }
    
    
    
    func buttonEnabled() {
        rollButton.setTitle("Press me to play.", for: .normal)
        if(rollButton.isEnabled) {
            rollButton.isEnabled = false
        }
        else {
            rollButton.isEnabled = true
        }
        resetButton.isHidden = false
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("view did load")
        resetButton.setTitle("Reset Me.", for: .normal)
        resetButton.isHidden = true
        // Do any additional setup after loading the view.
    }


}

