//
//  ViewController.swift
//  SideMenuCustom
//
//  Created by dept3 on 5/30/18.
//  Copyright © 2018 dept2. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // MARK: - Controls
    
    var sideMenuView                                        : SideMenuView!
    var viewMenu                                            : UIView!
    var isMenuSide                                          = false
    
    // MARK: - Override Functions
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        /* -------------------------------------- Custom view SIDE MENU
        self.sideMenuView = SideMenuView(x: 0, y: 0, width: ScreenSize.SCREEN_WIDTH - 100, height: ScreenSize.SCREEN_HEIGHT - 100)
        sideMenuView.backgroundColor = UIColor.black.withAlphaComponent(0.5)
        self.view.addSubview(sideMenuView)
        ----------------------------------------- */
        
        /// Storyboard SIDE MENU
        
        // 0verlay navigation controller
        guard let sideMenuVC = UIStoryboard.getSideMenuViewController() else {
            return
        }
        viewMenu = UIView(frame: CGRect(x: 0, y: 0, width: self.view.frame.width, height: self.view.frame.height))
        viewMenu.addSubview(sideMenuVC.view)
//        self.navigationController?.view.insertSubview(sideMenuVC.view, at: 0)
        self.navigationController?.view.addSubview(viewMenu)
    }
    
    // MARK: - Functions

    
    // MARK: - Events
    
    @IBAction func menuItemAction(_ sender: UIBarButtonItem) {
        if !isMenuSide {
            // Flag
            self.isMenuSide = true
            
            // Move view
            UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 0.8, initialSpringVelocity: 0, options: .curveEaseInOut, animations: {
                self.navigationController?.navigationBar.frame.origin.x = 200
                self.navigationController?.view.layer.shadowOpacity = 0.8
                self.viewMenu.frame.origin.x = 0
                self.view.frame.origin.x = 200
            }, completion: nil)
        } else {
            // Flag
            self.isMenuSide = false
            
            // Move view
            UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 0.8, initialSpringVelocity: 0, options: .curveEaseInOut, animations: {
                self.navigationController?.navigationBar.frame.origin.x = 0
                self.navigationController?.view.layer.shadowOpacity = 0.0
                self.viewMenu.frame.origin.x = -200
                self.view.frame.origin.x = 0
            }, completion: nil)
        }
    }
    
}

