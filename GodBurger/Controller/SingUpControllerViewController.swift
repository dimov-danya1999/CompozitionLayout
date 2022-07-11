//
//  SingUpControllerViewController.swift
//  GodBurger
//
//  Created by mac on 09.07.2022.
//

import UIKit

class SingUpControllerViewController: UIViewController {
    
    let signView = SignView()

    override func viewDidLoad() {
        super.viewDidLoad()
        view = signView 
    }
}
