//
//  SideMenuViewController.swift
//  SideMenu
//
//  Created by dept3 on 6/8/18.
//  Copyright © 2018 dept2. All rights reserved.
//

import UIKit

class SideMenuViewController: UIViewController {

    // MARK: - Controls
    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var tableView: UITableView!
    
    // MARK: - Override Functions
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Image view
        self.imgView.image = UIImage(named: "ID-10041194")
        
        // Table view
        tableView.delegate = self
        tableView.dataSource = self
        let nib = UINib(nibName: "MenuTableViewCell", bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: "MenuSideCell")
    }
}

extension SideMenuViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MenuSideCell", for: indexPath) as! MenuTableViewCell
        cell.titleImageView.image = UIImage(named: "ID-10017782")
        cell.lbTitle.text = "ViewController \(indexPath.row)"
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        NotificationCenter.default.post(name: NSNotification.Name(Constant.toggleSideMenuObserver), object: nil)
        let cell = tableView.cellForRow(at: indexPath) as! MenuTableViewCell
        let data: [String: String] = [Constant.titleMenuItem : cell.lbTitle.text!]
        NotificationCenter.default.post(name: NSNotification.Name(Constant.pushAnotherViewControllerObserver), object: nil, userInfo: data)
    }
}
