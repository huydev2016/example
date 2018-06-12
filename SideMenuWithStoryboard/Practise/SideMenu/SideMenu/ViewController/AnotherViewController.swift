//
//  AnotherViewController.swift
//  SideMenu
//
//  Created by dept3 on 6/8/18.
//  Copyright © 2018 dept2. All rights reserved.
//

import UIKit

class AnotherViewController: UIViewController {

    @IBOutlet weak var testLabel: UILabel!
    
    var text: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        testLabel.text = text
    }

}
