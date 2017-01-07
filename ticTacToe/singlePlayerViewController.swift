//
//  singlePlayerViewController.swift
//  ticTacToe
//
//  Created by Keertika Gupta on 07/01/17.
//  Copyright © 2017 Keertika Gupta. All rights reserved.
//

import UIKit

class singlePlayerViewController: UIViewController {
var gameState = [0,0,0,0,0,0,0,0,0]
    let winningCombinations = [[0,1,2] , [3,4,5],[6,7,8],[0,3,6],[1,4,7],[2,5,8],[0,4,8],[2,4,6]]
    var activePlayer = 1

    @IBOutlet var buttonOutlet: Array<UIButton> = []
    
    override func viewDidLoad()
    {
        super.viewDidLoad()

        
    }
    @IBAction func buttonPressed(_ sender: AnyObject)
    {let activePosition = sender.tag - 1
       
        if gameState[activePosition] == 0
        {            gameState[activePosition] = activePlayer
            if activePlayer == 1
            {
                
                
                sender.setImage(UIImage(named:"cross.png"), for: [])
                activePlayer = 2
            }
          

                var random = 3//Int(arc4random_uniform(8))


        while gameState[random] != 0
        {             let random = Int(arc4random_uniform(9))
        }
        print(random)
    buttonOutlet[random].setImage(UIImage(named:"circle.png"), for: [])
        gameState[random] = 2
                activePlayer = 1
            }
            
            for combinations in winningCombinations
            {
                if gameState[combinations[0]] != 0 && gameState[combinations[0]] == gameState[combinations[1]] && gameState[combinations[1]] == gameState[combinations[2]] {
                    let winner = gameState[combinations[0]]
                    print(winner)
                }
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

   

}
