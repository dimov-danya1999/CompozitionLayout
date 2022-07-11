//
//  Helper.swift
//  GodBurger
//
//  Created by mac on 09.07.2022.
//

import UIKit

class Helper {
    static func tamicOff(view: [UIView]) {
        for  view in view {
            view.translatesAutoresizingMaskIntoConstraints = false
        }
    }
    static func addSupView(view: [UIView], superView: UIView) {
        for view in view {
            superView.addSubview(view)
        }
    }
    
}
