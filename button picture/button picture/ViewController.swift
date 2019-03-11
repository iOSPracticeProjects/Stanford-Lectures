//
//  ViewController.swift
//  button picture
//
//  Created by veerababu mulugu on 2/22/19.
//  Copyright © 2019 veerababu m. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    var flipCount = 0{
        didSet{
            FlipCountLabel.text = "Flips: \(flipCount)"

        }
    }
 
    @IBOutlet weak var FlipCountLabel: UILabel!
    
    @IBOutlet var cardButtons: [UIButton]!
    
    var emojiChoices = ["👻","🎃","👻","🎃"]
    
    
    
    
    @IBAction func BunGhost(_ sender: UIButton) {
        
        flipCount += 1
        if let cardNumber = cardButtons.firstIndex(of: sender)
        {
            flipCard(withEmoji: emojiChoices[cardNumber], on: sender)
            print("cardNumber = \(String(describing: cardNumber))")

        } else {
            
            print("Choose card was not in CarButton")
        }
        
        
       // flipCard(withEmoji: "👻", on: sender as! UIButton)
    }
    
    
    func flipCard(withEmoji emoji:String, on button: UIButton)  {
        print("flipCard(withEmoji: \(emoji)")
        flipCount += 1

        if button.currentTitle == emoji {
            button.setTitle("", for: UIControl.State.normal)
            button.backgroundColor = UIColor.orange
        }
        else{
            button.setTitle(emoji, for: UIControl.State.normal)
            button.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
            
            
        }
    }
    
    // this second action
    
//    @IBAction func BunPumpkin(_ sender: Any) {
//        
//        flipCard(withEmoji: "🎃", on: sender as! UIButton)
//    }
    
    
    
    
    
}

