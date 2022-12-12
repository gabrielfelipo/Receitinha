//
//  PassoPassoViewController+PassoPassoDelegate.swift
//  Receitinha
//
//  Created by ditthales on 19/09/22.
//

import UIKit
import AVFoundation

extension PassoPassoViewController: PassoPassoDelegate{
    func sair() {
        passoPassoView.popupBackgroundView.isHidden = false
        self.navigationController?.navigationBar.isHidden = true
    }
    
    func continuar() {
        passoPassoView.popupBackgroundView.isHidden = true
        self.navigationController?.navigationBar.isHidden = false
    }
    
    func menu() {
        self.navigationController?.navigationBar.isHidden = false
        self.navigationController?.popToRootViewController(animated: false)
    }
    
    func anterior() {
        player?.stop()
        speechService.synthesizer.stopSpeaking(at: .immediate)
        if passo == receitas[receitaIndex!].troca + 1 {
            self.navigationController?.popViewController(animated: true)
        }else if passo == 0{
            // volta preview
            self.navigationController?.popViewController(animated: true)
        }else{
            passoPassoView.decreaseProgressbar(index: passo)
            passo = passo - 1
            getJsonPasso()        }
    }
    
    func proximo() {
        player?.stop()
        speechService.synthesizer.stopSpeaking(at: .immediate)
        if passo < receitas[receitaIndex!].tituloInstrucao.count - 1{
            if passo == receitas[receitaIndex!].troca {
                
                let backItem = UIBarButtonItem()
                backItem.title = "Sair da receita"
                navigationItem.backBarButtonItem = backItem
                
                let checkViewController = CheckViewController()
                checkViewController.indexReceita = receitaIndex
                navigationController?.pushViewController(checkViewController, animated: true)
            } else{
                passo = passo + 1
                passoPassoView.increaseProgressBar(index: passo)
                getJsonPasso()
            }
        } else{
            let finalVC = ConclusaoViewController()
            finalVC.indexReceita = receitaIndex
            navigationController?.pushViewController(finalVC, animated: true)
        }
        
    }
    
    func reproducaoAudios() {
        let stringToBeSpoken = "\(receitas[receitaIndex!].tituloInstrucao[passo]). \(receitas[receitaIndex!].descricao[passo])"
        speechService.say(stringToBeSpoken)
    }
    
    
}
