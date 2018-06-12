//
//  ViewController.swift
//  FirebasePhoneVerification
//
//  Created by dept3 on 6/11/18.
//  Copyright © 2018 dept2. All rights reserved.
//

import UIKit
import Firebase
import FirebasePhoneAuthUI

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    
        PhoneAuthProvider.provider().verifyPhoneNumber("+84909179042") {(verificationID, error) in
            if let error = error {
                print("ERROR = \(error)")
                return
            }
            
            print("VERIFICATION ID = \(verificationID)")
        }
    }
}

