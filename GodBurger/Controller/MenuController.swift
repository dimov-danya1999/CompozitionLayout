//
//  MenuController.swift
//  GodBurger
//
//  Created by mac on 11.07.2022.
//

import UIKit

class MenuController: UIViewController {
    
    let menuView = MenuView()

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .white
        view = menuView
    }
}

extension MenuController: UICollectionViewDelegate, UICollectionViewDataSource {
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 4
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: GoodBurgerCell.identificator, for: indexPath) as! GoodBurgerCell
        cell.backgroundColor = .black
        return cell
    }
    
    
}
