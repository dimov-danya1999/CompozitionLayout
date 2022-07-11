//
//  LableExtencion.swift
//  GodBurger
//
//  Created by mac on 09.07.2022.
//

import UIKit


extension UILabel {
    convenience init(text: String, font: UIFont?) {
        self.init(frame: CGRect())
        self.text = text
        self.font = font
        self.tintColor = tintColor
        self.textColor = tintColor
    }
}
