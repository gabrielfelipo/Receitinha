//
//  PassoPassoViewController+PassoPassoDelegate.swift
//  Receitinha
//
//  Created by ditthales on 19/09/22.
//

import UIKit
import AVFoundation

extension PassoPassoViewController: PassoPassoDelegate{
    func anterior() {
        if passo == receitas[receitaIndex!].troca + 1 {
            //volta checkpoint
        }else if passo == 0{
            // volta preview
        }else{
            passoPassoView.decreaseProgressbar(index: passo)
            passo = passo - 1
            getJsonPasso()        }
    }
    
    func proximo() {
        if passo < receitas[receitaIndex!].tituloInstrucao.count{
            if passo == receitas[receitaIndex!].troca && !visitCheckpoint! {
                //checkpoint tela
            }else{
                passo = passo + 1
                passoPassoView.increaseProgressBar(index: passo)
                getJsonPasso()
            }
        }else{
            //final tela
        }
        
    }
    
    func oiSomTestano() {
        
        receitas[receitaIndex!].audioDescricao[passo]
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
