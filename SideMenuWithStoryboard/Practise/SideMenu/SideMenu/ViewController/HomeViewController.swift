//
//  HomeViewController.swift
//  SideMenu
//
//  Created by dept3 on 6/8/18.
//  Copyright © 2018 dept2. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    // MARK: - Properties
    
    // MARK: - Override functions
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        NotificationCenter.default.addObserver(
            self,
            selector: #selector(pushAnotherViewController(_:)),
            name: NSNotification.Name(Constant.pushAnotherViewControllerObserver),
            object: nil)
    }

    // MARK: - Events
    
    @IBAction func backToLoginViewController(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func tapMenuItem(_ sender: UIBarButtonItem) {
        let nameObserver = NSNotification.Name(Constant.toggleSideMenuObserver)
        NotificationCenter.default.post(name: nameObserver, object: nil)
    }
    
    @objc func pushAnotherViewController(_ notification: Notification) {
        guard let dic = notification.userInfo as? [String : String] else {
            return
        }
        
        if let anotherVC = UIStoryboard.getAnotherViewController() {
            anotherVC.text = dic[Constant.titleMenuItem]
            self.navigationController?.pushViewController(anotherVC, animated: true)
        }
    }
    
}
