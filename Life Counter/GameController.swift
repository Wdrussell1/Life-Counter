//
//  GameController.swift
//  Life Counter
//
//  Created by Casey Barrett on 5/13/18.
//  Copyright © 2018 BarrettPCSolutions. All rights reserved.
//

import UIKit

var isStandard: Bool = false

class GameController: UIViewController, UITextFieldDelegate, UINavigationControllerDelegate {

    let vc = ViewController()
    // Player variables
    
    var countPlayerOne = 0
    var countPlayerTwo = 0
    var countPlayerThree = 0
    var countPlayerFour = 0
    
    @IBOutlet weak var playerOneAdd: UIButton!
    @IBOutlet weak var playerOneMinus: UIButton!
    @IBOutlet weak var playerTwoAdd: UIButton!
    @IBOutlet weak var playerTwoMinus: UIButton!
    @IBOutlet weak var playerThreeAdd: UIButton!
    @IBOutlet weak var playerThreeMinus: UIButton!
    @IBOutlet weak var playerFourAdd: UIButton!
    @IBOutlet weak var playerFourMinus: UIButton!
    
    
    
    // Outlets
    
    @IBOutlet weak var playerOneLife: UILabel!
    @IBOutlet weak var playerTwoLife: UILabel!
    @IBOutlet weak var playerThreeLife: UILabel!
    @IBOutlet weak var playerFourLife: UILabel!
    
  
    func checkForGameMode() {
        
        if isStandard == true {
            countPlayerOne = 20
            playerOneLife.text = String(countPlayerOne)
            print(countPlayerOne)
            countPlayerTwo = 20
            playerTwoLife.text = String(countPlayerTwo)
            countPlayerThree = 20
            playerThreeLife.text = String(countPlayerThree)
            countPlayerFour = 20
            playerFourLife.text = String(countPlayerFour)
        } else if isStandard == false {
            countPlayerOne = 40
            playerOneLife.text = String(countPlayerOne)
            countPlayerTwo = 40
            playerTwoLife.text = String(countPlayerTwo)
            countPlayerThree = 40
            playerThreeLife.text = String(countPlayerThree)
            countPlayerFour = 40
            playerFourLife.text = String(countPlayerFour)
        }
    }
        
            
            override func viewDidLoad() {
                super.viewDidLoad()
                
                
                checkForGameMode()
                
                playerOneAdd.addTarget(self,action:#selector(playerCountChanged(_:)),
                                       for:.touchUpInside)
                playerOneMinus.addTarget(self,action:#selector(playerCountChanged(_:)),
                                         for:.touchUpInside)
                playerTwoAdd.addTarget(self,action:#selector(playerCountChanged(_:)),
                                       for:.touchUpInside)
                playerTwoMinus.addTarget(self,action:#selector(playerCountChanged(_:)),
                                         for:.touchUpInside)
                playerThreeAdd.addTarget(self,action:#selector(playerCountChanged(_:)),
                                         for:.touchUpInside)
                playerThreeMinus.addTarget(self,action:#selector(playerCountChanged(_:)),
                                           for:.touchUpInside)
                playerFourAdd.addTarget(self,action:#selector(playerCountChanged(_:)),
                                        for:.touchUpInside)
                playerFourMinus.addTarget(self,action:#selector(playerCountChanged(_:)),
                                          for:.touchUpInside)
                
                // Do any additional setup after loading the view.
            }
            
            
            
    
    enum Player: Int {
        case One
        case Two
        case Three
        case Four
        case Five
        case Six
        case Seven
        case Eight
        
    }
    
    // This will be the function that allows your player to either decrease or increase. This will remove the need for 4 different functions all doing the same thing to different variables.
    
    @objc func playerCountChanged(_ sender: UIButton) {
        
        switch sender.tag {
            
            // Buttons for Player One
            
        case Player.One.rawValue:
            countPlayerOne = addPoints(player: countPlayerOne)
            playerOneLife.text = String(countPlayerOne)
            
        case Player.Two.rawValue:
            if countPlayerOne >= 1 {
            countPlayerOne = subtractPoints(player: countPlayerOne)
            playerOneLife.text = String(countPlayerOne)
            } else {
                break
            }
            
            // Buttons for Player Two
            
        case Player.Three.rawValue:
            countPlayerTwo = addPoints(player: countPlayerTwo)
            playerTwoLife.text = String(countPlayerTwo)
            
        case Player.Four.rawValue:
            if countPlayerTwo >= 1 {
            countPlayerTwo = subtractPoints(player: countPlayerTwo)
            playerTwoLife.text = String(countPlayerTwo)
            } else {
                break
                
            }
            
            // Buttons for Player Three
            
        case Player.Five.rawValue:
            countPlayerThree = addPoints(player: countPlayerThree)
            playerThreeLife.text = String(countPlayerThree)
            
        case Player.Six.rawValue:
            if countPlayerThree >= 1 {
            countPlayerThree = subtractPoints(player: countPlayerThree)
            playerThreeLife.text = String(countPlayerThree)
            } else {
                break
            }
            
            // Buttons for Player Four
            
        case Player.Seven.rawValue:
            countPlayerFour = addPoints(player: countPlayerFour)
            playerFourLife.text = String(countPlayerFour)
            
        case Player.Eight.rawValue:
            if countPlayerFour >= 1 {
            countPlayerFour = subtractPoints(player: countPlayerFour)
            playerFourLife.text = String(countPlayerFour)
            } else {
                break
            }
            
            
        default:
            break
        }
        
    }
    
    func addPoints(player: Int) -> Int {
        var p = player
        p += 1
        return p
    }
    
    func subtractPoints(player: Int) -> Int {
        var p = player
        p -= 1
        return p
    }

}
