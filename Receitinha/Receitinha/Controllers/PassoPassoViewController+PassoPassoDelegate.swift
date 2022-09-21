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
        if passo < receitas[receitaIndex!].tituloInstrucao.count - 1{
            if passo == receitas[receitaIndex!].troca {
                let checkViewController = CheckViewController()
                checkViewController.indexReceita = receitaIndex
                navigationController?.pushViewController(checkViewController, animated: true)
            }else{
                passo = passo + 1
                passoPassoView.increaseProgressBar(index: passo)
                getJsonPasso()
            }
        }else{
            let finalVC = ConclusaoViewController()
            finalVC.indexReceita = receitaIndex
            navigationController?.pushViewController(finalVC, animated: true)
        }
        
    }
    
    func reproducaoAudios() {
        if let player = player, player.isPlaying {
                   // num faz nada
               }
               else {
                   let urlString = Bundle.main.path(forResource: receitas[receitaIndex!].audioDescricao[passo], ofType: "mp3")
                   do {
                       try AVAudioSession.sharedInstance().setMode(.default)
                       try AVAudioSession.sharedInstance().setActive(true, options: .notifyOthersOnDeactivation)
                       
                       guard let urlString = urlString else{
                           return
                       }
                       
                       player = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: urlString))
                       
                       guard let player = player else{ // Unrapping
                           return
                       }
                       
                       player.play()
                   }
                   catch {
                       fatalError("Deu BO")
                   }
               }
    }
    
    
}
