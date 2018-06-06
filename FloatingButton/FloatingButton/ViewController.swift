//
//  ViewController.swift
//  FloatingButton
//
//  Created by dept3 on 6/6/18.
//  Copyright © 2018 dept2. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var btnClose: UIButton!
    var panGesture: UIPanGestureRecognizer!
    var tapGesture: UITapGestureRecognizer!
    
    var buttonPos = CGPoint.zero
    let padding = CGFloat(integerLiteral: 20)
    let widthButton = CGFloat(integerLiteral: 50)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.btnClose = UIButton()
        self.btnClose.backgroundColor = UIColor.black
        self.view.addSubview(self.btnClose)
        
        self.panGesture = UIPanGestureRecognizer(target: self, action: #selector(panAction(panGesture:)))
        self.tapGesture = UITapGestureRecognizer(target: self, action: #selector(tapAction(tapGesture:)))
        
        self.btnClose.addGestureRecognizer(self.panGesture)
        self.btnClose.addGestureRecognizer(self.tapGesture)
    }
    
    @objc func tapAction(tapGesture: UITapGestureRecognizer) {
        print("tap")
    }
    
    @objc func panAction(panGesture: UIPanGestureRecognizer) {
        if panGesture.state == .began {
            buttonPos = self.btnClose.center
        } else if panGesture.state == .failed || panGesture.state == .cancelled {
            self.btnClose.center = buttonPos
        } else {
            let location = panGesture.location(in: self.view)
            self.btnClose.center = location
            if location.x < self.widthButton/2 {
                self.btnClose.center.x = self.widthButton/2
            }
            if location.x > self.view.frame.width - self.widthButton/2 {
                self.btnClose.center.x = self.view.frame.width - self.widthButton/2
            }
            
            if location.y < self.widthButton/2 {
                self.btnClose.center.y = self.widthButton/2
            }
            if location.y > self.view.frame.height - self.widthButton/2 {
                self.btnClose.center.y = self.view.frame.height - self.widthButton/2
            }
        }
    }
    
    override func updateViewConstraints() {
        super.updateViewConstraints()

        let widthConstraint = NSLayoutConstraint(item: self.btnClose, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: self.widthButton)
        self.view.addConstraint(widthConstraint)

        let heightConstraint = NSLayoutConstraint(item: self.btnClose, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: self.widthButton)
        self.view.addConstraint(heightConstraint)

        let trailingConstraint = NSLayoutConstraint(item: self.btnClose, attribute: .trailing, relatedBy: .equal, toItem: self.view, attribute: .trailing, multiplier: 1, constant: -self.padding)
        self.view.addConstraint(trailingConstraint)

        let bottomConstraint1 = NSLayoutConstraint(item: self.btnClose, attribute: .bottom, relatedBy: .equal, toItem: self.view, attribute: .bottom, multiplier: 1, constant: -self.padding)
        self.view.addConstraint(bottomConstraint1)

        self.btnClose.translatesAutoresizingMaskIntoConstraints = false
    }
}

