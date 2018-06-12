//
//  MenuTableViewCell.swift
//  SideMenu
//
//  Created by dept3 on 6/8/18.
//  Copyright © 2018 dept2. All rights reserved.
//

import UIKit

class MenuTableViewCell: UITableViewCell {

    // MARK: - Controls
    @IBOutlet weak var titleImageView: UIImageView!
    @IBOutlet weak var lbTitle: UILabel!
    
    // MARK: - Override functions
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
