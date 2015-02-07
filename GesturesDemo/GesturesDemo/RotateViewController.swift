//
//  RotateViewController.swift
//  GesturesDemo
//
//  Created by Bilal Arslan on 02/02/15.
//  Copyright (c) 2015 Bilal Arslan. All rights reserved.
//

import UIKit

class RotateViewController: UIViewController {
    
    
    @IBOutlet var testView:UIView!
    
    override func viewDidLoad() {
        /// Tab Changing Swipe Gestures
        var leftSwipeGesture = UISwipeGestureRecognizer(target: self, action: "jumpToOtherTab:")
        leftSwipeGesture.direction = UISwipeGestureRecognizerDirection.Left
        view.addGestureRecognizer(leftSwipeGesture)
        
        var rightSwipeGesture = UISwipeGestureRecognizer(target: self, action: "jumpToOtherTab:")
        rightSwipeGesture.direction = UISwipeGestureRecognizerDirection.Right
        view.addGestureRecognizer(rightSwipeGesture)
        
        var rotateGesture = UIRotationGestureRecognizer(target: self, action: "handleRotationWithGestureRecognizer:")
        self.testView.addGestureRecognizer(rotateGesture)
        
    }
    
    func handleRotationWithGestureRecognizer(gestureRecognizer: UIRotationGestureRecognizer) -> Void {
        self.testView.transform = CGAffineTransformRotate(self.testView.transform, gestureRecognizer.rotation)
        
        gestureRecognizer.rotation = 0.0;
    }
    
    func jumpToOtherTab(gestureRecognizer: UISwipeGestureRecognizer) -> Void {
        if gestureRecognizer.direction == UISwipeGestureRecognizerDirection.Left
        {
            tabBarController?.selectedIndex = 0
        }
        else
        {
            tabBarController?.selectedIndex = 3
        }
    }
}
