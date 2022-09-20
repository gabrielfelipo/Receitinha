//
//  CheckViewController+DataSource.swift
//  Receitinha
//
//  Created by rsbj on 17/09/22.
//

import UIKit

extension CheckViewController:UITableViewDelegate{
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 56
    }
    
}

extension CheckViewController: ButtonDelegate{
    func passarTela() {
        print("chegou aqui no passar tela")
        let passoPassoVC = PassoPassoViewController()
        passoPassoVC.passo = receitas[indexReceita!].troca + 1
        passoPassoVC.receitaIndex = indexReceita
        navigationController?.pushViewController(passoPassoVC, animated: true)
    }
    
    
}
