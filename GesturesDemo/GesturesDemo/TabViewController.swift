//
//  TabViewController.swift
//  GesturesDemo
//
//  Created by Bilal Arslan on 02/02/15.
//  Copyright (c) 2015 Bilal Arslan. All rights reserved.
//

import UIKit

class TabViewController: UIViewController
{

    @IBOutlet var testView:UIView!
    
    override func viewDidLoad() {
        
        testView.center = self.view.center
        
        /// Tab Changing Swipe Gestures
        var leftSwipeGesture = UISwipeGestureRecognizer(target: self, action: "jumpToOtherTab:")
        leftSwipeGesture.direction = UISwipeGestureRecognizerDirection.Left
        view.addGestureRecognizer(leftSwipeGesture)
        
        var rightSwipeGesture = UISwipeGestureRecognizer(target: self, action: "jumpToOtherTab:")
        rightSwipeGesture.direction = UISwipeGestureRecognizerDirection.Right
        view.addGestureRecognizer(rightSwipeGesture)
        
        /// Tap Gestures
        var tapGesture = UITapGestureRecognizer(target: self, action: "handleSingleTapGesture:")
        testView.addGestureRecognizer(tapGesture)
        
        var doubleTapGesture = UITapGestureRecognizer(target: self, action: "handleDoubleTapGesture:")
        doubleTapGesture.numberOfTapsRequired = 2
        doubleTapGesture.numberOfTouchesRequired = 2
        testView.addGestureRecognizer(doubleTapGesture)
 
    }
    
    func handleSingleTapGesture(tapGestureRecognizer:UITapGestureRecognizer) -> Void {
        var newWidth: CGFloat = 200.0
        if testView.frame.size.width == newWidth
        {
            newWidth = 300.0
        }
        let currentCenter = testView.center
        
        testView.frame = CGRectMake(testView.frame.origin.x, testView.frame.origin.y, newWidth, testView.frame.height)
        testView.center = currentCenter
    }
    
    func handleDoubleTapGesture(tapGestureRecognizer:UITapGestureRecognizer) -> Void {
        var newSize = CGSizeMake(200.0, 200.0)
        if  testView.frame.size == newSize || testView.frame.size == CGSizeMake(300.0, 200.0)
        {
            newSize.height = 300.0
            newSize.width = 300.0
        }
        
        let currentCenter = testView.center
        
        testView.frame = CGRectMake(testView.frame.origin.x, testView.frame.origin.y, newSize.width, newSize.height)
        testView.center = currentCenter
    }
    
    func jumpToOtherTab(gestureRecognizer: UISwipeGestureRecognizer) -> Void {
        if gestureRecognizer.direction == UISwipeGestureRecognizerDirection.Left
        {
            tabBarController?.selectedIndex = 1
        }
        else
        {
            tabBarController?.selectedIndex = 4
        }
    }
}
