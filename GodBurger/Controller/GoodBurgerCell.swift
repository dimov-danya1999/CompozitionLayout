//
//  GoodBurgerCell.swift
//  GodBurger
//
//  Created by mac on 11.07.2022.
//

import UIKit

class GoodBurgerCell: UICollectionViewCell {
    
    static let identificator = "GoodBurgerCell"
    
    let imageView = UIImageView(image: UIImage(named: "chiz"))
    let titleLabel = UILabel(text: "Название товара", font: FontLibary.cellText)
    let priceLabel = UILabel(text: "3", font: FontLibary.cellText)
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setConstraint()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //добавляем картинку
    func setConstraint() {
        let stack = UIStackView(view: [titleLabel,priceLabel], axis: .horizontal, spacing: 8)
        Helper.addSupView(view: [imageView, stack], superView: self)
        Helper.tamicOff(view: [imageView, stack])
        
        imageView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            imageView.leadingAnchor.constraint(equalTo: leadingAnchor),
            imageView.topAnchor.constraint(equalTo: topAnchor),
            imageView.bottomAnchor.constraint(equalTo: bottomAnchor),
            imageView.trailingAnchor.constraint(equalTo: trailingAnchor)
        ])
        stack.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            stack.leadingAnchor.constraint(equalTo: leadingAnchor),
            stack.heightAnchor.constraint(equalToConstant: 36),
            stack.bottomAnchor.constraint(equalTo: bottomAnchor),
            stack.trailingAnchor.constraint(equalTo: trailingAnchor)
        ])
    }
    
    func setView() {
        
    }
}
