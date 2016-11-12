//
//  ViewController.swift
//  Canvas
//
//  Created by Mary Martinez on 11/11/16.
//  Copyright © 2016 Mary Martinez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var parentView: UIView!
    @IBOutlet weak var trayView: UIView!

    var trayOriginalCenter: CGPoint!
    var trayCenterWhenOpen: CGPoint!
    var trayCenterWhenClosed: CGPoint!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        trayCenterWhenOpen = CGPoint(x: trayView.center.x, y: 550 )
        trayCenterWhenClosed = CGPoint(x: trayView.center.x, y: 540 + 210)
    }
    
    @IBAction func onTrayPanGesture(_ panGestureRecognizer: UIPanGestureRecognizer) {
        let velocity = panGestureRecognizer.velocity(in: parentView)
        
        if panGestureRecognizer.state == .began {
           trayOriginalCenter = trayView.center
            
        } else if panGestureRecognizer.state == .changed {
            
            if velocity.y > 0 { // moving down
                UIView.animate(withDuration: 0.3, delay: 0, options: .curveEaseOut, animations: {
                    self.trayView.center.y = self.trayCenterWhenClosed.y
                })
                
            } else { // moving up
                UIView.animate(withDuration: 0.3, delay: 0, options: .curveEaseOut, animations: {
                    self.trayView.center.y = self.trayCenterWhenOpen.y
                })
            }

        } else if panGestureRecognizer.state == .ended {
            
        }
    }

}

