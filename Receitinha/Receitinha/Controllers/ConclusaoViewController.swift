//
//  ConclusaoViewController.swift
//  Receitinha
//
//  Created by LoreVilaca on 15/09/22.
//

import UIKit

class ConclusaoViewController: UIViewController {

    let conclusaoView = ConclusaoView ()
    var indexReceita: Int?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view = conclusaoView
        conclusaoView.delegate = self
        navigationItem.hidesBackButton = true
        // Do any additional setup after loading the view.
    }

}

extension ConclusaoViewController: ButtonDelegate {
    func sair() {
        
    }
    
    func continuar() {
        
    }
    
    func menu() {
        
    }
    
    func passarTela() {
        if Conquista.desbloqueadas[indexReceita!]{
            navigationController?.popToRootViewController(animated: true)
        }else{
            let ganhoConquistaVC = GanhoConquistaViewController()
            ganhoConquistaVC.indexReceita = indexReceita
            navigationController?.pushViewController(ganhoConquistaVC, animated: true)
        }
        
    }
    
    
}
