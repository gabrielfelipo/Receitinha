//
//  ReceitasViewController+DataSource.swift
//  Receitinha
//
//  Created by LoreVilaca on 14/09/22.
//

import Foundation
import UIKit

extension ReceitasViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return receitas.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = receitasView.receitasTableView.dequeueReusableCell(withIdentifier: ReceitasTableViewCell.recipeCellIdentifier, for: indexPath) as! ReceitasTableViewCell
        cell.backgroundColor = UIColor(named: "blueBackground")
        cell.imageRecipe.image = UIImage(named: receitas[indexPath.row].imagemPrevia)
        cell.nameRecipe.text = receitas[indexPath.row].titulo
        cell.durationRecipe.text = "Duração: \(String(receitas[indexPath.row].duracao)) minutos"
        cell.dificultyRecipe.text = "Dificuldade: \(receitas[indexPath.row].dificuldade)"
        return cell
    }
    
}
