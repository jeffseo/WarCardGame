//
//  ViewController.swift
//  WarCardGame
//
//  Created by Jeff Seo on 2020-09-23.
//  Copyright © 2020 Jeff Seo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
  
  @IBOutlet weak var leftImageView: UIImageView!
  @IBOutlet weak var rightImageView: UIImageView!
  
  
  @IBOutlet weak var leftScoreLabel: UILabel!
  @IBOutlet weak var rightScoreLabel: UILabel!
  
  var leftScore = 0
  var rightScore = 0
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
    
  }

  
  @IBAction func dealTapped(_ sender: Any) {
    
    // Randomize numbers from card range
    let leftNumber = Int.random(in: 2...14)
    let rightNumber = Int.random(in: 2...14)
   
    // Update image view based on the generated number
    leftImageView.image = UIImage(named: "card\(leftNumber)")
    rightImageView.image = UIImage(named: "card\(rightNumber)")
    
    // Compare the random numbers to determine who won
    if leftNumber > rightNumber {
      // Left side wins
      leftScore += 1
      leftScoreLabel.text = String(leftScore)
    }
    else if leftNumber < rightNumber {
      // right side wins
      rightScore += 1
      rightScoreLabel.text = String(rightScore)
    }
    else {
      // tie
    }
  }
  
}

