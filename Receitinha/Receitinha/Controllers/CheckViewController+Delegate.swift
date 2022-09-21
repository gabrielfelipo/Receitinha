//
//  CheckViewController+DataSource.swift
//  Receitinha
//
//  Created by rsbj on 17/09/22.
//

import UIKit

extension CheckViewController: UITableViewDelegate{
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 52
    }
    
}

extension CheckViewController: ButtonDelegate{
    func passarTela() {
        let backItem = UIBarButtonItem()
        backItem.title = "Sair da receita"
        navigationItem.backBarButtonItem = backItem
        
        let passoPassoVC = PassoPassoViewController()
        passoPassoVC.passo = receitas[indexReceita!].troca + 1
        passoPassoVC.receitaIndex = indexReceita
        navigationController?.pushViewController(passoPassoVC, animated: true)
    }
    
    
}
