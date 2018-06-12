//
//  Extension.swift
//  SideMenuCustom
//
//  Created by dept3 on 6/7/18.
//  Copyright © 2018 dept2. All rights reserved.
//

import Foundation
import UIKit

extension UIStoryboard {
    static func mainStoryboard() -> UIStoryboard {
        return UIStoryboard(name: "Main", bundle: nil)
    }
    
    static func getSideMenuViewController() -> SideMenuViewController? {
        return mainStoryboard().instantiateViewController(withIdentifier: "sideMenuViewController") as? SideMenuViewController
    }
}
