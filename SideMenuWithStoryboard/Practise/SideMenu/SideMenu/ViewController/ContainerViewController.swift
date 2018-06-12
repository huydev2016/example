//
//  ContainerViewController.swift
//  SideMenu
//
//  Created by dept3 on 6/8/18.
//  Copyright © 2018 dept2. All rights reserved.
//

import UIKit

class ContainerViewController: UIViewController {

    // MARK: - Controls
    @IBOutlet weak var leadingSideMenuConstraint: NSLayoutConstraint!
    @IBOutlet weak var containerHomeView: UIView!
    @IBOutlet weak var containerSideMenuView: UIView!
    
    // MARK: - Properties
    var isMenuOpen = false
    
    // MARK: - Override functions
    
    override func viewDidLoad() {
        super.viewDidLoad()

        containerSideMenuView.layer.zPosition = -1
        
        // Hide side menu
        leadingSideMenuConstraint.constant = -200
        
        // Add observer to open/close menu
        let nameObserver = NSNotification.Name(Constant.toggleSideMenuObserver)
        NotificationCenter.default.addObserver(self, selector: #selector(toggleSideMenu), name: nameObserver, object: nil)
        
        // Add gesture
        let panGesture = UIPanGestureRecognizer(target: self, action: #selector(handlePanGesture(_:)))
        self.view.addGestureRecognizer(panGesture)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        self.containerHomeView.dropShadow(color: .darkGray, opacity: 0.8, offSet: CGSize(width: -0.5, height: 0.5), radius: 3, scale: true)
    
    }

    // MARK: - Events
    
    @objc func handlePanGesture(_ panGesture: UIPanGestureRecognizer) {
        
        switch panGesture.state {
        case .changed:
            // Update constraint
            leadingSideMenuConstraint.constant = leadingSideMenuConstraint.constant + panGesture.translation(in: view).x
            panGesture.setTranslation(CGPoint.zero, in: view)
            
            // Stop drag
            if containerSideMenuView.frame.origin.x > 200 {
                containerSideMenuView.frame.origin.x = 200
                return
            }
            
            if containerSideMenuView.frame.origin.x < -200 {
                containerSideMenuView.frame.origin.x = -200
                return
            }
            
        case .ended:
            break
            
        default:
            break
        }
    }
    
    @objc func toggleSideMenu() {
        if isMenuOpen {
            closeSideMenu()
        } else {
            openSideMenu()
        }
    }
    
    // MARK: - Functions
    
    func closeSideMenu() {
        isMenuOpen = false
        leadingSideMenuConstraint.constant = -200
        
        UIView.animate(withDuration: 0.5, animations: {() -> Void in
            self.view.layoutIfNeeded()
        })
    }
    
    func openSideMenu() {
        isMenuOpen = true
        leadingSideMenuConstraint.constant = 0
        
        UIView.animate(withDuration: 0.5, animations: {() -> Void in
            self.view.layoutIfNeeded()
        })
    }
}
