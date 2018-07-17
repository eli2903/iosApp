//
//  ViewController.swift
//  EliasTest
//
//  Created by elias saad on 7/12/18.
//  Copyright © 2018 elias saad. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
   
    
    @IBOutlet weak var leftImageView: UIImageView!
    @IBOutlet weak var rightImageView: UIImageView!
    @IBOutlet weak var leftScoreLabel: UILabel!
    @IBOutlet weak var rightScoreLabel: UILabel!
    
    var leftScore = 0
    var rightScore = 0
    var widadBLABLABLABLA = 0 
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func dealTapped(_ sender: Any) {
        let leftRandomNumber = arc4random_uniform(13) + 2
        let rightRandomNumber = arc4random_uniform(13) + 2
 
        leftImageView.image = UIImage(named: "card\(leftRandomNumber)")
        rightImageView.image = UIImage(named: "card\(rightRandomNumber)")
        
        if(leftRandomNumber > rightRandomNumber){
           leftScore += 1
           leftScoreLabel.text = String(leftScore)
            
        }
        else if (rightRandomNumber > leftRandomNumber){
            rightScore += 1
            rightScoreLabel.text = String(rightScore)
        }
        else if (rightRandomNumber == leftRandomNumber){
            
        }
        

    }
    

}

