//
//  ViewController.swift
//  iosSwift
//
//  Created by darshan on 25/12/17.
//  Copyright © 2017 darshan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
  

    @IBAction func clickButton(_ sender: UIButton) {
    flipCard(withEmoji : "👻",on : sender)
    }
        func flipCard(withEmoji emoji:String, on button: UIButton){
            if button.currentTitle == "👻" {
                button.setTitle("☃️", for:.normal)
                UIView.transition(with: button, duration: 1, options: .transitionFlipFromBottom, animations: {
                    
                }, completion: { (success) in
                    
                })
                
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
    


