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
    @IBAction func touchFirtButton(_ sender: UIButton) {
        flipCount += 1
        flipCard(withEmoji : "👻",on : sender)
    }
    @IBAction func touchSecondButton(_ sender: UIButton) {
        flipCount += 1
        flipCard(withEmoji : "🐶",on : sender)
    }
    func flipCard(withEmoji emoji:String, on button: UIButton){
            if button.currentTitle == emoji {
                button.setTitle("", for:.normal)
                button.backgroundColor = #colorLiteral(red: 0.9254902005, green: 0.5174844981, blue: 0.09545681811, alpha: 1)
        }
            else {
                button.setTitle(emoji, for: .normal)
                button.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        }
        
    
            
            /*
             [UIView transitionWithView:flipContainerView
             duration:1
             options:UIViewAnimationOptionTransitionFlipFromLeft
             animations:^{
             
             if (!flipped) {
             [frontCard setHidden:YES];
             [flipContainerView addSubview:backCard.view];
             flipped = YES;
             } else {
             [frontCard setHidden:NO];
             [backCard removeFromSuperview]; //or hide it.
             }
             
             } completion:nil];
             */
            
        }
        
    }


