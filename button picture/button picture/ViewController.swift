//
//  ViewController.swift
//  button picture
//
//  Created by veerababu mulugu on 2/22/19.
//  Copyright © 2019 veerababu m. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBAction func ButtonFlowwer(_ sender: Any) {
        
        print("button pressed in simulator")
        flipCard(withEmoji: "🌼", on: sender as! UIButton)
    }
    
 
    func flipCard(withEmoji emoji:String, on button: UIButton)  {
        print("the filpCard function is called")
        
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
    
    @IBAction func ButtonStar(_ sender: Any) {
        
        flipCard(withEmoji: "★", on: sender as! UIButton)
    }
    
    
    
    
    
}

