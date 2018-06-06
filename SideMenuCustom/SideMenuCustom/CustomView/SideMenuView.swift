//
//  SideMenuView.swift
//  SideMenuCustom
//
//  Created by dept3 on 5/30/18.
//  Copyright © 2018 dept2. All rights reserved.
//

import UIKit

class SideMenuView: UIView {

    // MARK: - Controls
    var tbvMenuItem                                                 : UITableView!
    
    // MARK: - Variables
    var items                                                       = [String]()
    
    // MARK: - Override Functions
    
    init(x: CGFloat, y: CGFloat, width: CGFloat, height: CGFloat) {
        super.init(frame: CGRect(x: x, y: y, width: width, height: height))
        
        // Init
        self.frame = CGRect(x: x, y: y, width: width, height: height)
        
        // TABLEVIEW
        self.tbvMenuItem = UITableView(frame: CGRect(x: 0, y: 0, width: self.frame.width, height: self.frame.height))
        self.tbvMenuItem.backgroundColor = UIColor.blue
        let cellNib = UINib(nibName: "SideMenuItemTableViewCell", bundle: nil)
        self.tbvMenuItem.register(cellNib, forCellReuseIdentifier: "sideMenuItemTableViewCell")
        self.tbvMenuItem.isScrollEnabled = false
        self.tbvMenuItem.separatorStyle = .none
        self.tbvMenuItem.delegate = self
        self.tbvMenuItem.dataSource = self
        
        // Add subview
        self.addSubview(tbvMenuItem)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Functions
    
    
}

// MARK: - TableView Delegate, DataSource
extension SideMenuView: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "sideMenuItemTableViewCell", for: indexPath) as! SideMenuItemTableViewCell
        cell.backgroundColor = UIColor.cyan
        cell.imgItem.backgroundColor = UIColor.brown
        cell.lbTitle.text = "12345678910132312412412412"
        return cell
    }
 
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
    
}
