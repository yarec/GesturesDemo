//
//  SwipeViewController.swift
//  GesturesDemo
//
//  Created by Bilal Arslan on 02/02/15.
//  Copyright (c) 2015 Bilal Arslan. All rights reserved.
//

import UIKit

class SwipeViewController: UIViewController {
    
    @IBOutlet var testView:UIView!
    
    override func viewDidLoad() {
        var leftSwipeGesture = UISwipeGestureRecognizer(target: self, action: "jumpToOtherTab:")
        leftSwipeGesture.direction = UISwipeGestureRecognizerDirection.Left
        view.addGestureRecognizer(leftSwipeGesture)
        
        var rightSwipeGesture = UISwipeGestureRecognizer(target: self, action: "jumpToOtherTab:")
        rightSwipeGesture.direction = UISwipeGestureRecognizerDirection.Right
        view.addGestureRecognizer(rightSwipeGesture)
        
        
        
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
