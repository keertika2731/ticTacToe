//
//  ViewController.swift
//  ticTacToe
//
//  Created by Keertika Gupta on 04/01/17.
//  Copyright © 2017 Keertika Gupta. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var activePlayer = 1
var gameState = [0,0,0,0,0,0,0,0,0]
    let winningCombinations = [[0,1,2] , [3,4,5],[6,7,8],[0,3,6],[1,4,7],[2,5,8],[0,4,8],[2,4,6]]
   
    override func viewDidLoad() {
        super.viewDidLoad()
   
    }

    
    @IBAction func button(_ sender: AnyObject)
    { let activePosition = sender.tag - 1
       
        if gameState[activePosition] == 0
        {            gameState[activePosition] = activePlayer

            
            
        if activePlayer == 1
        {
            

        sender.setImage(UIImage(named:"cross.png"), for: [])
                    activePlayer = 2
                }
        else{
            sender.setImage(UIImage(named:"circle.png"), for: [])
                        activePlayer = 1
                   }
        for combinations in winningCombinations
        {
            if gameState[combinations[0]] != 0 && gameState[combinations[0]] == gameState[combinations[1]] && gameState[combinations[1]] == gameState[combinations[2]] {
            
                print("win")
                let destinationVC = self.storyboard?.instantiateViewController(withIdentifier: "popUpViewController") as! popUpViewController
                show(destinationVC, sender: nil)
                destinationVC.modalPresentationStyle = UIModalPresentationStyle.overCurrentContext
            }
            
            }
        }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
            }


}

