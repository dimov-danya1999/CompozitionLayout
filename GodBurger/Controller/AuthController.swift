//
//  ViewController.swift
//  GodBurger
//
//  Created by mac on 09.07.2022.
//

import UIKit

class AuthController: UIViewController {
    
    var authView = AuthView()

    override func viewDidLoad() {
        super.viewDidLoad()
        view = authView
        addTarget()
    }
    
    func addTarget() {
        authView.passwordButton.addTarget(self, action: #selector(regTap), for: .touchUpInside)
    }
    
    @objc func regTap() {
        let regVS = SingUpControllerViewController()
        present(regVS, animated: true)
    }
    
}

