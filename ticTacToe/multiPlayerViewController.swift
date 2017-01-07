//
//  multiPlayerViewController.swift
//  ticTacToe
//
//  Created by Keertika Gupta on 06/01/17.
//  Copyright © 2017 Keertika Gupta. All rights reserved.
//

import UIKit

class multiPlayerViewController: UIViewController {
  
    @IBOutlet weak var buttonOutlet: UIButton!
    
    var gameState = [0,0,0,0,0,0,0,0,0]
    var activePlayer = 1
    let winningCombinations = [[0,1,2] , [3,4,5],[6,7,8],[0,3,6],[1,4,7],[2,5,8],[0,4,8],[2,4,6]]
   


    @IBAction func button(_ sender: AnyObject)
    {var nullPosition = Int()
        var Tag = Int()
         let activePosition = sender.tag - 1
        if gameState[activePosition] == 0
        {
            gameState[activePosition] = activePlayer
            sender.setImage(UIImage(named:"cross.png"), for: [])

        }
        
        if gameState[4]==0
        {
            sender.setImage(UIImage(named:"circle.png"), for: [])

        }
            // for the second chance "block"
        else
        {
            for combinations in winningCombinations
            {
            if gameState[combinations[0]] == 0 && gameState[combinations[1]] == 1 && gameState[combinations[2]] == 1
            {
                nullPosition = 0
            }
            
              else if  gameState[combinations[0]] == 1 && gameState[combinations[1]] == 1 && gameState[combinations[2]] == 0
            {
                nullPosition = 2
            }
           else if gameState[combinations[0]] == 1 && gameState[combinations[1]] == 0 && gameState[combinations[2]] == 1
          {
              nullPosition = 1
           }
            Tag = combinations[nullPosition] + 1
            }
         //var tag = winningCombinations[nullPosition] + 1
            for btns in self.view as [UIButton]
            {
            if tempBtn.tag == Tag
            {
            }
    }
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    }
