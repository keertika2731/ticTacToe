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
var activeGame = true
   
    @IBOutlet var buttonOutlet:Array <UIButton> = []
    override func viewDidLoad()
    {
        super.viewDidLoad()
        NotificationCenter.default.addObserver(self, selector: #selector(singlePlayerViewController.recievedNotification(notification:)), name: NSNotification.Name("NotificationIdentifier"), object: nil)
        
    }
    @IBAction func buttonPressed(_ sender: AnyObject)
    {let activePosition = sender.tag - 1
       
        if gameState[activePosition] == 0 && activeGame
        {            gameState[activePosition] = activePlayer
            if activePlayer == 1
            {
                
                
                sender.setImage(UIImage(named:"cross.png"), for: [])
                activePlayer = 2
            }
          

                var random = 3//Int(arc4random_uniform(8))


        while gameState[random] != 0
        {            random = Int(arc4random_uniform(9))
        }
       // print(random)
        //    print(buttonOutlet[1].tag)
    buttonOutlet[random].setImage(UIImage(named:"circle.png"), for: [])
        gameState[random] = 2
            
            
                activePlayer = 1
            }
            
            for combinations in winningCombinations
            {
                if gameState[combinations[0]] != 0 && gameState[combinations[0]] == gameState[combinations[1]] && gameState[combinations[1]] == gameState[combinations[2]] {
                    let winner = gameState[combinations[0]]
                    print(winner)
                    activeGame = false
                    let destinationVC = self.storyboard?.instantiateViewController(withIdentifier: "popUpViewController") as! popUpViewController
                    destinationVC.winner = winner
                   // self.present(destinationVC , animated: true, completion: nil)
                    self.navigationController!.pushViewController(destinationVC, animated: true)
                }
        }
        
    }

    func recievedNotification(notification: NSNotification)
    {
        gameState = [0,0,0,0,0,0,0,0,0]
        activePlayer = 1
        activeGame = true
        for i in 0..<9
        {
        buttonOutlet[i].setImage(nil, for: [])
        
    }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

   

}
