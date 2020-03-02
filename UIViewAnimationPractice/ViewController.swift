//
//  ViewController.swift
//  UIViewAnimationPractice
//
//  Created by Carlos Cordeiro on 28/02/2020.
//  Copyright © 2020 Carlos Cordeiro. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var block: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        

    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        upMove()
        
    }
    
    
    func upMove () {
        
       
        
       UIView.animate(withDuration: 1.2, delay: 2, usingSpringWithDamping: 0.5, initialSpringVelocity: 4, options: .curveEaseIn, animations: {
            self.block.frame.origin = CGPoint(x: self.view.center.x - (self.block.frame.width / 2), y: 0)
        }) { (success) in
            self.rightMove()
        }
        
    }
    
    func rightMove () {
        
        UIView.animate(withDuration: 1.2, delay: 0, usingSpringWithDamping: 0.2, initialSpringVelocity: 6, options: .curveEaseIn, animations: {
            self.block.frame.origin = CGPoint(x: self.view.frame.size.width - self.block.frame.width, y: self.view.center.y - (self.block.frame.size.height / 2))
        }) { (success) in
            self.downMove()
        }
    }
    
    func downMove () {
        
     UIView.animate(withDuration: 1.2, delay: 0, usingSpringWithDamping: 0.9, initialSpringVelocity: 3, options: .curveEaseIn, animations: {
        self.block.frame.origin = CGPoint(x: self.view.center.x - (self.block.frame.width / 2), y: self.view.frame.size.height - self.block.frame.size.height)
        }) { (success) in
            self.leftMove()
        }
        
    }
    
    
    func leftMove () {
        
        UIView.animate(withDuration: 2, delay: 0, options: .curveEaseInOut, animations: {
            self.block.frame.origin = CGPoint(x: 0, y: self.view.center.y - (self.block.frame.size.height / 2))
        }) { (success) in
            self.resetMove()
        }
        
    }
    
    
    
    func resetMove () {
        
        
        UIView.animate(withDuration: 1) {
            self.block.center = CGPoint(x: self.view.center.x, y: self.view.center.y)
            
        }
        
    }
    
    
    //This is a comment for test
    
    
    
  
        



}

