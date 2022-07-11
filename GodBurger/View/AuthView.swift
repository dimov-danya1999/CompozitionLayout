//
//  AuthView.swift
//  GodBurger
//
//  Created by mac on 09.07.2022.
//

import UIKit

class AuthView: UIView {
    
    private lazy var loginLabel: UILabel = {
        let label = UILabel(text: "Добрый Бургер",
                            font: FontLibary.largeTitle)
        return label
    }()
    
    private lazy var cardView: UIView = {
        let cardView = UIView()
        cardView.backgroundColor = .white
        cardView.layer.cornerRadius = 12
        return cardView
    }()
    
    private lazy var roundView: UIView = {
        let roundView = UIView()
        roundView.backgroundColor = .white
        roundView.layer.cornerRadius = 70
        return roundView
    }()
    
    private lazy var logoImageView: UIImageView = {
        let logoImage = UIImageView(image: UIImage(named: "no"))
        return logoImage
    }()
    
    private lazy var singInLogin: UILabel = {
        let singInLogin = UILabel(text: "Войти",
                                  font: FontLibary.smallTitle)
        singInLogin.textAlignment = .center
        return singInLogin
    }()
    
   private lazy var emailTextField: UITextField = {
       let emailTextField = UITextField(placholder: "Введите email")
       return emailTextField
    }()
    
     var passwordlTextField: UITextField = {
        let passwordlTextField = UITextField(placholder: "Введите пароль")
        passwordlTextField.isSecureTextEntry = true
        return passwordlTextField
     }()
    
     var singButton: UIButton = {
        let button = UIButton(title: "Войти",
                              color: UIColor(named: "b"))
        return button
    }()
    
     var passwordButton: UIButton = {
        let button = UIButton(title: "Еще не с нами?",
                              tintColor: UIColor(named: "b"))
        return button
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = UIColor(named: "Color")
        setConstraint()
    }
        
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setConstraint() {
        
        let stack = UIStackView(view: [singInLogin,
                                       emailTextField,
                                       passwordlTextField,
                                       singButton,
                                       passwordButton],
                                axis: .vertical,
                                spacing: 12)
     
        Helper.addSupView(view: [roundView, cardView, loginLabel, logoImageView, stack], superView: self)
        Helper.tamicOff(view: [roundView, cardView, loginLabel, logoImageView, stack])
        
        NSLayoutConstraint.activate([
            stack.topAnchor.constraint(equalTo: logoImageView.bottomAnchor, constant: 4),
            stack.leadingAnchor.constraint(equalTo: cardView.leadingAnchor,constant: 24),
            stack.centerXAnchor.constraint(equalTo: centerXAnchor),
            stack.bottomAnchor.constraint(equalTo: cardView.bottomAnchor, constant: -24)
        ])
        
        NSLayoutConstraint.activate([
            logoImageView.heightAnchor.constraint(equalToConstant: 235),
            logoImageView.widthAnchor.constraint(equalToConstant: 235),
            logoImageView.centerXAnchor.constraint(equalTo: roundView.centerXAnchor),
            logoImageView.centerYAnchor.constraint(equalTo: roundView.centerYAnchor)
        ])
        
        NSLayoutConstraint.activate([
            loginLabel.bottomAnchor.constraint(equalTo: roundView.topAnchor, constant: -24),
            loginLabel.centerXAnchor.constraint(equalTo: centerXAnchor)
        ])
        
        NSLayoutConstraint.activate([
            cardView.heightAnchor.constraint(equalToConstant: 320),
            cardView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 24),
            cardView.centerXAnchor.constraint(equalTo: centerXAnchor),
            cardView.centerYAnchor.constraint(equalTo: centerYAnchor)
        ])
        
        NSLayoutConstraint.activate([
            roundView.heightAnchor.constraint(equalToConstant: 140),
            roundView.widthAnchor.constraint(equalToConstant: 140),
            roundView.centerYAnchor.constraint(equalTo: cardView.topAnchor),
            roundView.centerXAnchor.constraint(equalTo: centerXAnchor)
        ])
    }
}
