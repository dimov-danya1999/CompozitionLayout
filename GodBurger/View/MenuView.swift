//
//  MenuView.swift
//  GodBurger
//
//  Created by mac on 11.07.2022.
//

import UIKit

class MenuView: UIView {

    let collectionView = UICollectionView(frame: CGRect() , collectionViewLayout:
                                            CompozitionLayout().createCompozitionLayout())
    
    init() {
        super.init(frame: CGRect())
        setConstraint()
        setView()
    }
    
    func setView() {
        collectionView.backgroundColor = .lightGray
        collectionView.register(GoodBurgerCell.self, forCellWithReuseIdentifier: GoodBurgerCell.identificator)
    }
    
    func setConstraint() {
        addSubview(collectionView)
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            collectionView.topAnchor.constraint(equalTo: topAnchor,constant: 70),
            collectionView.leadingAnchor.constraint(equalTo: leadingAnchor),
            collectionView.trailingAnchor.constraint(equalTo: trailingAnchor),
            collectionView.bottomAnchor.constraint(equalTo: bottomAnchor)
        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
