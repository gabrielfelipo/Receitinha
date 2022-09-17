//
//  TabBarController.swift
//  Receitinha
//
//  Created by gabrielfelipo on 12/09/22.
//

import UIKit

class TabBarController: UITabBarController {
    
    var navigationControllers: [UIViewController] = []
    
    let controllers: [UIViewController] = [
        ConquistasViewController(),
        ReceitasViewController(),
        PesquisarViewController(),
        //PreviaViewController()
    ]
    
    let icons = [
      "rosette",
      "fork.knife",
      "magnifyingglass",
      //"magnifyingglass",
    ]

    let titles = [
        "Conquistas",
        "Receitas",
        "Buscar",
        //"Previa"
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
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
