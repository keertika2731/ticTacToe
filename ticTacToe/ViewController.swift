//
//  ViewController.swift
//  ticTacToe
//
//  Created by Keertika Gupta on 04/01/17.
//  Copyright © 2017 Keertika Gupta. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    @IBOutlet var buttonOutlet: Array<UIButton> = []
    var activePlayer = 1
var gameState = [0,0,0,0,0,0,0,0,0]
    let winningCombinations = [[0,1,2] , [3,4,5],[6,7,8],[0,3,6],[1,4,7],[2,5,8],[0,4,8],[2,4,6]]
    var activeGame = true
   
    override func viewDidLoad() {
        super.viewDidLoad()
        
        NotificationCenter.default.addObserver(self, selector: #selector(ViewController.recievedNotification (notification:)), name: Notification.Name("NotificationIdentifier"), object: nil)
       
    }

   
    
    @IBAction func button(_ sender: AnyObject)
    { let activePosition = sender.tag - 1
       
        if gameState[activePosition] == 0 && activeGame
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
            let winner = gameState[combinations[0]]
                print(winner)
                activeGame = false
                let destinationVC = self.storyboard?.instantiateViewController(withIdentifier: "popUpViewController") as! popUpViewController
                destinationVC.winner = winner

                self.present(destinationVC, animated: true, completion: nil)
                
            }
            
            }
        }
    }
    
    func recievedNotification(notification: Notification)
    {
        for i in 0 ..< 9
        {
          buttonOutlet[i].setImage(nil, for: [])
        }
        
        activeGame = true
        gameState = [0,0,0,0,0,0,0,0,0]
        activePlayer = 1
        

    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
            }


}

