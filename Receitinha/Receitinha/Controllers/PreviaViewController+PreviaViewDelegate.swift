//
//  PreviaViewController+PreviaViewDelegate.swift
//  Receitinha
//
//  Created by ditthales on 19/09/22.
//

import Foundation

extension PreviaViewController: PreviaViewDelegate{
    func iniciarReceita() {
        let passoPassoViewController = PassoPassoViewController()
        print("pegou")
        navigationController?.pushViewController(passoPassoViewController, animated: true)
    }
    
    
}
