//
//  PanViewController.swift
//  GesturesDemo
//
//  Created by Bilal Arslan on 02/02/15.
//  Copyright (c) 2015 Bilal Arslan. All rights reserved.
//

import UIKit

class PanViewController: UIViewController {

    
    @IBOutlet var testView:UIView!
    //@IBOutlet var horizontalVelocityLabel:UILabel!
    //@IBOutlet var verticalVelocityLabel:UILabel!
    
    override func viewDidLoad() {
        /// Tab Changing Swipe Gestures
        var leftSwipeGesture = UISwipeGestureRecognizer(target: self, action: "jumpToOtherTab:")
        leftSwipeGesture.direction = UISwipeGestureRecognizerDirection.Left
        view.addGestureRecognizer(leftSwipeGesture)
        
        var rightSwipeGesture = UISwipeGestureRecognizer(target: self, action: "jumpToOtherTab:")
        rightSwipeGesture.direction = UISwipeGestureRecognizerDirection.Right
        view.addGestureRecognizer(rightSwipeGesture)
        
        var panGesture = UIPanGestureRecognizer(target: self, action: "moveViewWithGestureRecognizer:")
        testView.addGestureRecognizer(panGesture)
        
    }
    
    func moveViewWithGestureRecognizer(gestureRecognizer: UIPanGestureRecognizer) -> Void {
        var location = gestureRecognizer.locationInView(self.view)
        testView.center = location
        
//        var velocity = gestureRecognizer.velocityInView(self.view)
//        self.verticalVelocityLabel.text = "Vertical Velocity:\(Float(velocity.y)) points/sec"
//        self.horizontalVelocityLabel.text = "Horizontal Velocity:\(Float(velocity.x)) points/sec"
        
    }
    
    func jumpToOtherTab(gestureRecognizer: UISwipeGestureRecognizer) -> Void {
        if gestureRecognizer.direction == UISwipeGestureRecognizerDirection.Left
        {
            tabBarController?.selectedIndex = 3
        }
        else
        {
            tabBarController?.selectedIndex = 1
        }
    }
}
