//
//  PesquisarViewController.swift
//  Receitinha
//
//  Created by LoreVilaca on 12/09/22.
//

import UIKit

let listaReceitas = ["banana com nescau", "misto quente"]

var indiceResult: [Int] = []

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
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return quantidadeCell
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = pesquisarView.receitasTableView.dequeueReusableCell(withIdentifier: ReceitasTableViewCell.recipeCellIdentifier, for: indexPath) as! ReceitasTableViewCell
        cell.backgroundColor = UIColor(named: "blueBackground")
        
        let receita = Receita.receitas()
        let receitaAtual = indiceResult[indexPath.item]
        
        cell.imageRecipe.image = UIImage(named: receita[receitaAtual].imagemPrevia)
        
        var duracao = String(receita[receitaAtual].duracao)
        duracao = "Duração: " + duracao + " minutos"
        var dificuldade = receita[receitaAtual].dificuldade
        dificuldade = "Dificuldade: " + dificuldade
        
        cell.nameRecipe.text = receita[receitaAtual].titulo
        cell.dificultyRecipe.text = dificuldade
        cell.durationRecipe.text = duracao
        
        return cell
        }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 128
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
