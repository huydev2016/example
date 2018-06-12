//
//  SideMenuViewController.swift
//  SideMenuCustom
//
//  Created by dept3 on 6/7/18.
//  Copyright © 2018 dept2. All rights reserved.
//

import UIKit

class SideMenuViewController: UIViewController {

    // MARK: - Controls
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var imgView: UIImageView!
    
    // MARK: - Properties
    var tapGesture: UITapGestureRecognizer!
    
    // MARK: - Functions
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tapGesture = UITapGestureRecognizer(target: self, action: #selector(tap(tapGesture:)))
        
        let cellNib = UINib(nibName: "SideMenuItemTableViewCell", bundle: nil)
        tableView.register(cellNib, forCellReuseIdentifier: "MenuCell")
        tableView.delegate = self
        tableView.dataSource = self
    }

    func tap(tapGesture: UITapGestureRecognizer) {
        
    }
}

extension SideMenuViewController: UITableViewDelegate, UITableViewDataSource {

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MenuCell", for: indexPath) as! SideMenuItemTableViewCell
        cell.imgItem.image = UIImage(named: "ID-100120")
        cell.backgroundColor = UIColor.blue
        cell.lbTitle.text = "DOG"
        cell.lbTitle.backgroundColor = UIColor.brown
        cell.addGestureRecognizer(tapGesture)

        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("tap")
    }
}

