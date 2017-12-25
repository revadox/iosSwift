//
//  ViewController.swift
//  iosSwift
//
//  Created by darshan on 25/12/17.
//  Copyright © 2017 darshan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var flipCount = 0
    {
        didSet {
            
            flipCountNumber.text = "Flips: \(flipCount)"
        }
        
        
    }

    @IBOutlet weak var flipCountNumber: UILabel!
    
    @IBOutlet var cardButton: [UIButton]!
    
    var emojiChoices = ["👻","🐶","👻","🐶","👻","🐶"]
    
    @IBAction func touchFirtButton(_ sender: UIButton) {
        flipCount += 1
        if  let cardNumber = cardButton.index(of: sender)  {
            print("cardnumber, \(cardNumber)")
            flipCard(withEmoji: emojiChoices[cardNumber], on: sender)
        }
        else {
            
            print("something wrong")
            
        }
        
    }

    func flipCard(withEmoji emoji:String, on button: UIButton){
            if button.currentTitle == emoji {
                button.setTitle("", for:.normal)
                button.backgroundColor = #colorLiteral(red: 0.9244548678, green: 0.4297498167, blue: 0.09075621516, alpha: 1)
        }
            else {
                button.setTitle(emoji, for: .normal)
                button.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        }
        
    
        
            
        }
        
    }


