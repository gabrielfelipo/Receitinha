//
//  TabBarController.swift
//  Receitinha
//
//  Created by gabrielfelipo on 12/09/22.
//

import UIKit

class TabBarController: UITabBarController {
    
    var isFirstTime: Bool? = true
    
    var navigationControllers: [UIViewController] = []
    
    let controllers: [UIViewController] = [
        ConquistasViewController(),
        ReceitasViewController(),
        PesquisarViewController(),
    ]
    
    let icons = [
        "rosette",
        "fork.knife",
        "magnifyingglass",
    ]
    
    let titles = [
        "Conquistas",
        "Receitas",
        "Buscar",
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let defaults = UserDefaults.standard
        Conquista.isNotFirstTime = defaults.bool(forKey: "primeiraVez")

        if Conquista.isNotFirstTime{
            let array = defaults.array(forKey: "conquistas") as? [Bool] ?? [Bool]()
            Conquista.desbloqueadas = array
        } else {
            Conquista.isNotFirstTime = true
            
        }
        
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        setupTabBarController()
    }
    
    
    
    private func setupTabBarController () {
        
        controllers.enumerated().forEach{ (index, viewController) in
            viewController.navigationItem.largeTitleDisplayMode = .always
            let navigation = UINavigationController(rootViewController: viewController)
            navigation.navigationBar.prefersLargeTitles = true
            
            navigation.navigationBar.layer.shadowOffset = CGSize(width: 0, height: 0.5)
            navigation.navigationBar.layer.shadowRadius = 0
            navigation.navigationBar.layer.shadowColor = UIColor.black.cgColor
            navigation.navigationBar.layer.shadowOpacity = 0.3
            
            let appearance = UINavigationBarAppearance()
            appearance.configureWithOpaqueBackground()
            appearance.backgroundColor = UIColor(named: "tabBarColor")
            navigation.navigationBar.standardAppearance = appearance;
            navigation.navigationBar.scrollEdgeAppearance = navigation.navigationBar.standardAppearance
            
            navigation.tabBarItem = UITabBarItem(title: titles[index],
                                                 image: UIImage(systemName: icons[index]) , tag: 1)
            
            navigationControllers.append(navigation)
        }
        setViewControllers(self.navigationControllers, animated: true)
        
        tabBar.backgroundColor = UIColor(named: "tabBarColor")
        
        self.selectedIndex = 1
        
        tabBar.layer.shadowOffset = CGSize(width: 0, height: -0.5)
        tabBar.layer.shadowRadius = 0
        tabBar.layer.shadowColor = UIColor.black.cgColor
        tabBar.layer.shadowOpacity = 0.3
    }
    
}

// MARK: - Preview
#if DEBUG
import SwiftUI

@available(iOS 13, *)
struct TabBarController_Preview: PreviewProvider {
    static var previews: some View {
        Group {
            TabBarController().showPreview().previewDevice("iPhone SE (3rd generation)")
            TabBarController().showPreview().previewDevice("iPhone SE (3rd generation)").previewInterfaceOrientation(.landscapeLeft)
        }
    }
}
#endif
