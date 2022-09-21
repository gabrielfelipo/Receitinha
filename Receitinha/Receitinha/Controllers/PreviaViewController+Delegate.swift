//
//  PreviaViewController+PreviaViewDelegate.swift
//  Receitinha
//
//  Created by ditthales on 19/09/22.
//

import Foundation
import UIKit
import LocalAuthentication

extension PreviaViewController: PreviaViewDelegate{
    func iniciarReceita() {
        let passoPassoViewController = PassoPassoViewController()
        passoPassoViewController.receitaIndex = indexReceita
        let backItem = UIBarButtonItem()
        backItem.title = "Sair da receita"
        navigationItem.backBarButtonItem = backItem
        if receitas[indexReceita!].precisaAuxilio {
            let context = LAContext()
            var error: NSError? = nil
            if context.canEvaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, error: &error) {
                let reason = "Desbloqueie a receita usando o ID do seu responsável!"
                context.evaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, localizedReason: reason) { [weak self] success, error in
                    DispatchQueue.main.async {
                        guard success,error == nil else{
                            // fail
                            let alert = UIAlertController(title: "Acesso bloqueado", message: "Chame um reponsável para lhe ajudar", preferredStyle: .alert)
                            alert.addAction(UIAlertAction(title: "Sair", style: .cancel, handler: nil))
                            self?.present(alert, animated: true)
                            return
                        }
                        //success
                        self?.navigationController?.pushViewController(passoPassoViewController, animated: true)
                    }
                }
            }
            else {
                // can not use
               
            }
        }
        else{
            self.navigationController?.pushViewController(passoPassoViewController, animated: true)
        }
    }
    
    
}
