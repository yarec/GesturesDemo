//
//  SwipeViewController.swift
//  GesturesDemo
//
//  Created by Bilal Arslan on 02/02/15.
//  Copyright (c) 2015 Bilal Arslan. All rights reserved.
//

import UIKit

class SwipeViewController: UIViewController {
    
    @IBOutlet var orangeView: UIView!
    @IBOutlet var blackView: UIView!
    @IBOutlet var greenView: UIView!
    
    
    override func viewDidLoad() {
        
        // TODO: work with cgrect classes!
        
//        orangeView = UIView(frame: CGRectMake(0, 0, self.view.frame.width, 150))
//        orangeView.backgroundColor = UIColor.orangeColor()
//        orangeView.center = self.view!.center
//        self.view.addSubview(orangeView)
//        
//        blackView = UIView(frame: CGRectMake(0, 0, self.view.frame.width, orangeView.bounds.origin.y))
//        blackView.backgroundColor = UIColor.blackColor()
//        self.view.insertSubview(blackView, atIndex: 0)
//        //self.view.addSubview(blackView)
//        
//        greenView = UIView(frame: CGRectMake(0, 0, self.view.frame.width, orangeView.bounds.origin.y))
//        greenView.backgroundColor = UIColor.greenColor()
//        self.view.insertSubview(greenView, atIndex: 0)
//        //self.view.addSubview(greenView)
        
        
        /// Tab Changing Swipe Gestures
        var leftSwipeGesture = UISwipeGestureRecognizer(target: self, action: "jumpToOtherTab:")
        leftSwipeGesture.direction = UISwipeGestureRecognizerDirection.Left
        view.addGestureRecognizer(leftSwipeGesture)
        
        var rightSwipeGesture = UISwipeGestureRecognizer(target: self, action: "jumpToOtherTab:")
        rightSwipeGesture.direction = UISwipeGestureRecognizerDirection.Right
        view.addGestureRecognizer(rightSwipeGesture)
        
        orangeView.frame.origin.x = 0
        blackView.frame.origin.x = self.view.frame.width
        greenView.frame.origin.x = -self.view.frame.width
        
        orangeView.frame.size.width = self.view.frame.width
        blackView.frame.size.width = self.view.frame.width
        greenView.frame.size.width = self.view.frame.width
        
        orangeView.center = self.view.center
        orangeView.center = self.view.center
        orangeView.center = self.view.center
        
        
        var swipeLeftOrange = UISwipeGestureRecognizer(target: self, action: "slideToLeftWithGestureRecognizer:")
        swipeLeftOrange.direction = UISwipeGestureRecognizerDirection.Left
        orangeView.addGestureRecognizer(swipeLeftOrange)
        
        var swipeRightOrange = UISwipeGestureRecognizer(target: self, action: "slideToRightWithGestureRecognizer:")
        swipeRightOrange.direction = UISwipeGestureRecognizerDirection.Right
        orangeView.addGestureRecognizer(swipeRightOrange)
        
        var swipeLeftGreen = UISwipeGestureRecognizer(target: self, action: "slideToLeftWithGestureRecognizer:")
        swipeLeftGreen.direction = UISwipeGestureRecognizerDirection.Left
        greenView.addGestureRecognizer(swipeLeftGreen)
        
        var swipeRightBlack = UISwipeGestureRecognizer(target: self, action: "slideToRightWithGestureRecognizer:")
        swipeRightBlack.direction = UISwipeGestureRecognizerDirection.Right
        blackView.addGestureRecognizer(swipeRightBlack)
        
    }
    
    func slideToLeftWithGestureRecognizer(gestureRcognizer: UIGestureRecognizer) -> Void {
        UIView.animateWithDuration(0.5, animations: {
            self.orangeView.frame = CGRectOffset(self.orangeView.frame, -200.0, 0.0)
            self.blackView.frame = CGRectOffset(self.blackView.frame, -200.0, 0.0)
            self.greenView.frame = CGRectOffset(self.greenView.frame, -200.0, 0.0)
        })
    }

    
    func slideToRightWithGestureRecognizer(gestureRcognizer: UIGestureRecognizer) -> Void {
        UIView.animateWithDuration(0.5, animations: {
            self.orangeView.frame = CGRectOffset(self.orangeView.frame, 200.0, 0.0)
            self.blackView.frame = CGRectOffset(self.blackView.frame, 200.0, 0.0)
            self.greenView.frame = CGRectOffset(self.greenView.frame, 200.0, 0.0)
        })
    }
    
    func jumpToOtherTab(gestureRecognizer: UISwipeGestureRecognizer) -> Void {
        if gestureRecognizer.direction == UISwipeGestureRecognizerDirection.Left
        {
            tabBarController?.selectedIndex = 2
        }
        else
        {
            tabBarController?.selectedIndex = 0
        }
    }
}
