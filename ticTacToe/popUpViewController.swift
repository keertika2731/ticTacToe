//
//  popUpViewController.swift
//  ticTacToe
//
//  Created by Keertika Gupta on 05/01/17.
//  Copyright © 2017 Keertika Gupta. All rights reserved.
//

import UIKit

class popUpViewController: UIViewController {

   
    @IBOutlet weak var closeButton: UIButton!
    
    @IBOutlet weak var popUpView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        closeButton.setImage(UIImage(named:"closeButton.png"), for: [])
        closeButton.alpha = 1
        closeButton.isOpaque = true
        popUpView?.backgroundColor = UIColor(white: 1, alpha: 0.91)
        //popUpView.isOpaque = false
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

   

}
