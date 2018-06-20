//
//  ViewController.swift
//  lazyExample
//
//  Created by dept3 on 6/19/18.
//  Copyright © 2018 dept2. All rights reserved.
//

import UIKit
import Foundation

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
     
        let i = InterviewTest(name: "huy")
        print(i.greeting)
        i.count = 2
        print(i.greeting)
        print(i.greeting)
        print(i.greeting)
        print(i.greeting)
        print(i.greeting)
        print(i.greeting)
    }

}

