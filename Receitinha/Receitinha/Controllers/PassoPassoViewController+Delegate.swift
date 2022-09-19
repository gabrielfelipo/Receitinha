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
            //volta checkpoint
        }else if passo == 0{
            // volta preview
        }else{
            passo = passo - 1
            getJsonPasso()        }
    }
    
    func proximo() {
        if passo < receitas[receitaIndex!].tituloInstrucao.count{
            if passo == receitas[receitaIndex!].troca && !visitCheckpoint! {
                //checkpoint tela
            }else{
                passo = passo + 1
                getJsonPasso()
            }
        }else{
            //final tela
        }
        
    }
    
    func oiSomTestano() {
        
    }
    
    
}
