//
//  PassoPassoViewController+PassoPassoDelegate.swift
//  Receitinha
//
//  Created by ditthales on 19/09/22.
//

import UIKit
extension PassoPassoViewController: PassoPassoDelegate{
    func anterior() {
        if passo == receitas[receitaIndex!].troca + 1 {
            self.navigationController?.popViewController(animated: true)
        }else if passo == 0{
            // volta preview
            self.navigationController?.popViewController(animated: true)
        }else{
            passo = passo - 1
            getJsonPasso()        }
    }
    
    func proximo() {
        if passo < receitas[receitaIndex!].tituloInstrucao.count - 1{
            if passo == receitas[receitaIndex!].troca {
                let checkViewController = CheckViewController()
                checkViewController.indexReceita = receitaIndex
                navigationController?.pushViewController(checkViewController, animated: true)
            }else{
                passo = passo + 1
                getJsonPasso()
            }
        }else{
            let finalVC = ConclusaoViewController()
            finalVC.indexReceita = receitaIndex
            navigationController?.pushViewController(finalVC, animated: true)
        }
        
    }
    
    func oiSomTestano() {
        
    }
    
    
}
