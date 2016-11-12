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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func onTrayPanGesture(_ panGestureRecognizer: UIPanGestureRecognizer) {
        let translation = panGestureRecognizer.translation(in: parentView)
        
        if panGestureRecognizer.state == .began {
           trayOriginalCenter = trayView.center
            
        } else if panGestureRecognizer.state == .changed {
            trayView.center = CGPoint(x: trayOriginalCenter.x, y: trayOriginalCenter.y + translation.y)
            
        } else if panGestureRecognizer.state == .ended {
            
        }
    }

}

