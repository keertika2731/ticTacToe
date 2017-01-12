//
//  openingViewController.swift
//  ticTacToe
//
//  Created by Keertika Gupta on 11/01/17.
//  Copyright © 2017 Keertika Gupta. All rights reserved.
//

import UIKit

class openingViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func multiPlayerButton(_ sender: Any)
    {
        let destinationVC = self.storyboard?.instantiateViewController(withIdentifier: "multiPlayerViewController") as! ViewController
        self.navigationController!.pushViewController(destinationVC, animated: true)

    }
   
    @IBAction func singlePlayer(_ sender: Any)
    {
        let destinationVC = self.storyboard?.instantiateViewController(withIdentifier: "singlePlayerViewController") as! singlePlayerViewController
        self.navigationController!.pushViewController(destinationVC, animated: true)

    }
}
