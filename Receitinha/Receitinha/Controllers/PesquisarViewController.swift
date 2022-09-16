//
//  PesquisarViewController.swift
//  Receitinha
//
//  Created by LoreVilaca on 12/09/22.
//

import UIKit

let listaReceitas = ["banana com nescau", "misto quente", "bolo", "bolacha"]

var quantidadeCell = 0

let pesquisarView = PesquisarView()

class ResultsViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view = pesquisarView
        
    }
}


class PesquisarViewController: UIViewController, UISearchResultsUpdating, UITableViewDelegate, UITableViewDataSource {
    
    let searchController = UISearchController(searchResultsController: ResultsViewController())
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupTableView()
        setupPesquisarViewController()
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
        
        print(text)
        var listaResultado: [String] = []
        
        
        if let foo = listaReceitas.enumerated().first(where: {$0.element.contains(text.lowercased())}) {
           // do something with foo
            for titulo in listaReceitas {
                if titulo.contains(text.lowercased()) {
                    listaResultado.append(titulo)
                }
                quantidadeCell = listaResultado.count
                pesquisarView.receitasTableView.reloadData()
            }
            
        }
        
        print(listaResultado)
        //print(teste)
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return quantidadeCell
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = pesquisarView.receitasTableView.dequeueReusableCell(withIdentifier: ReceitasTableViewCell.recipeCellIdentifier, for: indexPath) as! ReceitasTableViewCell
            cell.backgroundColor = UIColor(named: "blueBackground")
            return cell
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
