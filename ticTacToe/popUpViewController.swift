//
//  popUpViewController.swift
//  ticTacToe
//
//  Created by Keertika Gupta on 05/01/17.
//  Copyright © 2017 Keertika Gupta. All rights reserved.
//

import UIKit

class popUpViewController: UIViewController {
var winner = Int()
    @IBOutlet weak var winnerOutlet: UIImageView!
   
    
    @IBOutlet weak var closeButton: UIButton!
    @IBOutlet weak var popUpView: UIView!
    override func viewDidLoad()
    {
        super.viewDidLoad()
        closeButton.setImage(UIImage(named:"closeButton.png"), for: [])
        closeButton.alpha = 1
        closeButton.isOpaque = true
        popUpView?.backgroundColor = UIColor(white: 1, alpha: 0.89)
        
        if winner == 1
        {
            winnerOutlet.image = UIImage(named:"cross.png")
            
        }
        else
        {
            winnerOutlet.image = UIImage(named:"circle.png")
        }
    }

    @IBAction func closeButton(_ sender: Any) {
        self.dismiss(animated: true , completion: nil)
    }
    
    
    
    @IBAction func playAgainButton(_ sender: Any)
    {
        NotificationCenter.default.post(name: Notification.Name("NotificationIdentifier"), object: nil)
        self.dismiss(animated: true, completion: nil)
        
           }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

   

}
