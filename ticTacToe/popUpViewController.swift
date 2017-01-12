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

        
    
    
    @IBAction func playAgainButton(_ sender: Any)
    {
        NotificationCenter.default.post(name: Notification.Name("NotificationIdentifier"), object: nil)
        //self.dismiss(animated: true, completion: nil)
        self.navigationController?.popViewController(animated: true)
        
           }
    
    
    @IBAction func backToMenu(_ sender: Any)
    {
    //self.navigationController!.popToViewController(navigationController!.viewControllers[0] as UIViewController, animated: false)
        self.navigationController?.popToRootViewController(animated: true)
        //self.navigationController?.dismiss(animated: true, completion: nil)
       // self.dismiss(animated: true, completion: ni)
        
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

   

}
