//
//  ButtonExtenshion.swift
//  GodBurger
//
//  Created by mac on 09.07.2022.
//

import UIKit

extension UIButton {
    
    convenience init(title: String, color: UIColor? = .clear, tintColor: UIColor? = .white) {
        self.init(type: .system)
        
        setTitle(title, for: .normal)
        backgroundColor = color
        setTitleColor(tintColor, for: .normal)
        self.tintColor = tintColor
        layer.cornerRadius = 6
    }
}
