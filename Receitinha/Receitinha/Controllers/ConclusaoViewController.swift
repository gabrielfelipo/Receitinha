//
//  ConclusaoViewController.swift
//  Receitinha
//
//  Created by LoreVilaca on 15/09/22.
//

import UIKit
import AVFoundation

class ConclusaoViewController: UIViewController {

    let conclusaoView = ConclusaoView ()
    var indexReceita: Int?
    var player: AVAudioPlayer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view = conclusaoView
        conclusaoView.delegate = self
        navigationItem.hidesBackButton = true
        // Do any additional setup after loading the view.
    }

}

extension ConclusaoViewController: ButtonDelegate {
    func fechar() {
    }
    
    func sair() {
    }
    
    func continuar() {
    }
    
    func menu() {
    }
    
    func passarTela() {
        print("TEste ai boy")
        if Conquista.desbloqueadas[indexReceita!]{
            print("Desbloqueada")
            navigationController?.popToRootViewController(animated: true)
        }else{
//            if let player = player, player.isPlaying {
//                // num faz nada
//                print("Tendi nao")
//            }
//            else {
//                print("dale")
//                let urlString = Bundle.main.path(forResource: "ultimoPasso", ofType: "wav")
//                do {
//                    try AVAudioSession.sharedInstance().setMode(.default)
//                    try AVAudioSession.sharedInstance().setActive(true, options: .notifyOthersOnDeactivation)
//
//                    guard let urlString = urlString else{
//                        return
//                    }
//
//                    player = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: urlString))
//
//                    guard let player = player else{ // Unrapping
//                        return
//                    }
//
//                    player.play()
//                }
//                catch {
//                    fatalError("Deu BO")
//                }
//            }
            let ganhoConquistaVC = GanhoConquistaViewController()
            ganhoConquistaVC.indexReceita = indexReceita
            navigationController?.pushViewController(ganhoConquistaVC, animated: true)
        }
        
    }
    
    
}
