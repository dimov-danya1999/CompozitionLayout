//
//  TextFieldExtenshion.swift
//  GodBurger
//
//  Created by mac on 09.07.2022.
//

import UIKit

extension UITextField {
    
    convenience init(placholder: String) {
        self.init(frame: CGRect())
        
        backgroundColor = .white
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowOffset = CGSize(width: 0, height: 0)
        layer.shadowRadius = 4
        layer.shadowOpacity = 0.3
        layer.cornerRadius = 6
        
        borderStyle = .none
        self.placeholder = placholder
        leftView = UIView(frame: CGRect(x: 0, y: 0, width: 8, height: 12))
        leftViewMode = .always
        font = FontLibary.labelText
    }
}
