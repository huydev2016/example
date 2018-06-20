//
//  ViewController.swift
//  FirebaseCrashlyticsDemo
//
//  Created by dept3 on 6/18/18.
//  Copyright © 2018 dept2. All rights reserved.
//

import UIKit
import Firebase

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func clickCRASH(_ sender: UIButton) {
        Crashlytics.sharedInstance().crash()
    }
}

