//
//  Extension.swift
//  SideMenu
//
//  Created by dept3 on 6/8/18.
//  Copyright © 2018 dept2. All rights reserved.
//

import Foundation
import UIKit

extension UIStoryboard {
    
    static func main() -> UIStoryboard {
        return UIStoryboard(name: "Main", bundle: nil)
    }
    
    static func getAnotherViewController() -> AnotherViewController? {
        return main().instantiateViewController(withIdentifier: "anotherViewController") as? AnotherViewController
    }
}

extension UIView {
    
    func dropShadow(color: UIColor, opacity: Float = 0.5, offSet: CGSize, radius: CGFloat = 1, scale: Bool = true) {
        layer.masksToBounds = false
        layer.shadowColor = color.cgColor
        layer.shadowOpacity = opacity
        layer.shadowOffset = offSet
        layer.shadowRadius = radius
        
        layer.shadowPath = UIBezierPath(rect: self.bounds).cgPath
        layer.shouldRasterize = true
        layer.rasterizationScale = scale ? UIScreen.main.scale : 1
    }

}
