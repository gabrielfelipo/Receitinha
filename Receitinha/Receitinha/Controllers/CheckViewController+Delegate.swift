//
//  CheckViewController+DataSource.swift
//  Receitinha
//
//  Created by rsbj on 17/09/22.
//

import UIKit

extension CheckViewController: UITableViewDelegate{
    @objc func sair() {
        checkView.popupBackgroundView.isHidden = false
        self.navigationController?.navigationBar.isHidden = true
    }
    
    func continuar() {
        checkView.popupBackgroundView.isHidden = true
        self.navigationController?.navigationBar.isHidden = false
    }
    
    func menu() {
        self.navigationController?.navigationBar.isHidden = false
        self.navigationController?.popToRootViewController(animated: false)
    }
    
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
