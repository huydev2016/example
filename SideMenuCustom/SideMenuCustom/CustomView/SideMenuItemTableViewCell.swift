//
//  SideMenuItemTableViewCell.swift
//  SideMenuCustom
//
//  Created by dept3 on 5/30/18.
//  Copyright © 2018 dept2. All rights reserved.
//

import UIKit

class SideMenuItemTableViewCell: UITableViewCell {
    
    // MARK: - Controls
    @IBOutlet weak var lbTitle: UILabel!
    @IBOutlet weak var imgItem: UIImageView!
    
    // MARK: - Variables
  
    
    // MARK: - Override Functions
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
    }

}
