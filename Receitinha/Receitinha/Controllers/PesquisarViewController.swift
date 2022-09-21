//
//  PesquisarViewController.swift
//  Receitinha
//
//  Created by LoreVilaca on 12/09/22.
//

import UIKit

let listaReceitas = ["banana com nescau", "misto quente", "bolo de caneca"]

var indiceResult: [Int] = []

var quantidadeCell = 0

let pesquisarView = PesquisarView()

class ResultsViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view = pesquisarView
        
    }
}


class PesquisarViewController: UIViewController, UISearchResultsUpdating {
    
    let searchController = UISearchController(searchResultsController: ResultsViewController())
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupTableView()
        setupPesquisarViewController()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        tabBarController?.tabBar.isHidden = false
        if Conquista.veioDeOnde == "ganhoConquista"{
            self.tabBarController?.selectedIndex = 0
            Conquista.veioDeOnde = ""
        }
    }
    
    func setupTableView() {
        pesquisarView.receitasTableView.delegate = self
        pesquisarView.receitasTableView.dataSource = self
    }
    
    func setupPesquisarViewController () {
        view.backgroundColor = UIColor(named: "blueBackground")
        self.navigationItem.title = "Buscar receita"
        
        searchController.searchResultsUpdater = self
        navigationItem.searchController = searchController
    }
    
    func updateSearchResults(for searchController: UISearchController) {
        guard let text = searchController.searchBar.text else {
            return
        }
        
        let viewController = searchController.searchResultsController as? ResultsViewController
        viewController?.view.backgroundColor = UIColor(named: "blueBackground")
        
        indiceResult = []
        
        
        if ((listaReceitas.enumerated().first(where: {$0.element.contains(text.lowercased())})) != nil) {
           // do something with foo
            for i in 0...listaReceitas.count-1 {
                if listaReceitas[i].contains(text.lowercased()) {
                    indiceResult.append(i)
                }
            }
        }
        quantidadeCell = indiceResult.count
        pesquisarView.receitasTableView.reloadData()
    }
}


// MARK: - Preview
#if DEBUG
import SwiftUI
@available(iOS 13, *)
struct PesquisarViewController_Preview: PreviewProvider {
    static var previews: some View {
        // view controller using programmatic UI
        Group {
            PesquisarViewController().showPreview().previewDevice("iPhone SE (3rd generation)")
            PesquisarViewController().showPreview().previewDevice("iPhone SE (3rd generation)").previewInterfaceOrientation(.landscapeLeft)
        }
    }
}
#endif
