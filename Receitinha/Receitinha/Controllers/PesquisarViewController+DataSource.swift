//
//  PesquisarViewController+DataSource.swift
//  Receitinha
//
//  Created by LoreVilaca on 19/09/22.
//

import Foundation
import UIKit

extension PesquisarViewController: UITableViewDataSource {
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
}
