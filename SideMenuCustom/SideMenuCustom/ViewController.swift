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
    
    
    // MARK: - Override Functions
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.sideMenuView = SideMenuView(x: 0, y: 0, width: ScreenSize.SCREEN_WIDTH - 100, height: ScreenSize.SCREEN_HEIGHT - 100)
        sideMenuView.backgroundColor = UIColor.black.withAlphaComponent(0.5)
        self.view.addSubview(sideMenuView)
    }
    
    // MARK: - Functions

}

