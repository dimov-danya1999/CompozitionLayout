//
//  TabBarControllerViewController.swift
//  GodBurger
//
//  Created by mac on 11.07.2022.
//

import UIKit

class TabBarControllerViewController: UITabBarController {

 
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemYellow
        tabController()
    }
    
    func tabController() {
        
        tabBar.tintColor = Resourse.Color.activ
        tabBar.barTintColor = Resourse.Color.inactiv
        tabBar.backgroundColor = .white
        
        tabBar.layer.borderColor = Resourse.Color.seporator.cgColor
        tabBar.layer.borderWidth = 1
        tabBar.layer.masksToBounds = true
        
        let vc1 = UINavigationController(rootViewController: MenuController())
        let vc2 = UINavigationController(rootViewController: CartController())
        let vc3 = UINavigationController(rootViewController: ProfileController())
        
        vc1.tabBarItem.image = UIImage(systemName: "circles.hexagongrid.fill")
        vc2.tabBarItem.image = UIImage(systemName: "cart.fill")
        vc3.tabBarItem.image = UIImage(systemName: "person.crop.circle.fill")

        vc1.title = "Меню"
        vc2.title = "Корзина"
        vc3.title = "Профиль"
        
        tabBar.tintColor = .label
        
        setViewControllers([vc1,vc2,vc3,], animated: true)
    }
}
