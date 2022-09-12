//
//  TabBarController.swift
//  Receitinha
//
//  Created by gabrielfelipo on 12/09/22.
//

import UIKit

class TabBarController: UITabBarController{

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        setupTabBarController()
    }
    
    private func setupTabBarController () {
        tabBar.backgroundColor = .white
        
        guard let items = tabBar.items else{return}
        
        items[0].title = "Conquistas"
        items[0].image = UIImage(systemName: "rosette")
        
        items[1].title = "Receitas"
        items[1].image = UIImage(systemName: "fork.knife")
        
        items[2].title = "Buscar"
        items[2].image = UIImage(systemName: "magnifyingglass")
    }

}


