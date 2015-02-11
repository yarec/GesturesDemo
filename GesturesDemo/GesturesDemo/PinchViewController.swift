//
//  PinchViewController.swift
//  GesturesDemo
//
//  Created by Bilal Arslan on 02/02/15.
//  Copyright (c) 2015 Bilal Arslan. All rights reserved.
//

import UIKit

class PinchViewController: UIViewController {

    
    @IBOutlet var testView:UIView!
    @IBOutlet var label: UILabel!
    
    override func viewDidLoad() {
        /// Tab Changing Swipe Gestures
        var leftSwipeGesture = UISwipeGestureRecognizer(target: self, action: "jumpToOtherTab:")
        leftSwipeGesture.direction = UISwipeGestureRecognizerDirection.Left
        view.addGestureRecognizer(leftSwipeGesture)
        
        var rightSwipeGesture = UISwipeGestureRecognizer(target: self, action: "jumpToOtherTab:")
        rightSwipeGesture.direction = UISwipeGestureRecognizerDirection.Right
        view.addGestureRecognizer(rightSwipeGesture)
        
        var pinchGesture = UIPinchGestureRecognizer(target: self, action: "handlePinchWithGestureRecognizer:")
        testView.addGestureRecognizer(pinchGesture)
        
    }
    
    func handlePinchWithGestureRecognizer(gestureRecognizer: UIPinchGestureRecognizer) -> Void {
        self.view.bringSubviewToFront(label)
        self.testView.transform = CGAffineTransformScale(self.testView.transform, gestureRecognizer.scale, gestureRecognizer.scale)
        gestureRecognizer.scale = 1.0;
    }
    
    func jumpToOtherTab(gestureRecognizer: UISwipeGestureRecognizer) -> Void {
        if gestureRecognizer.direction == UISwipeGestureRecognizerDirection.Left
        {
            tabBarController?.selectedIndex = 4
        }
        else
        {
            tabBarController?.selectedIndex = 2
        }
    }
}
