//
//  GanhoConquistasViewController.swift
//  Receitinha
//
//  Created by lss8 on 17/09/22.
//

import UIKit

class GanhoConquistaViewController: UIViewController {
    
    let ganhoConquistaView = GanhoConquistaView()
    var indexReceita: Int?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.hidesBackButton = true
        self.view = ganhoConquistaView
        setupGanhoConquistaViewController()
        ganhoConquistaView.delegate = self
        
        // Do any additional setup after loading the view.
    }
    
    func setupGanhoConquistaViewController () {
        setupLabel()
        setupImage()
        view.backgroundColor = UIColor(named: "blueBackground")
        //self.navigationController?.navigationBar.prefersLargeTitles = false
    }
    
    func setupLabel(){
        let boldText = Conquista.conquistas()[indexReceita!].nome[1]
        let regularText = "Você desbloqueou uma nova conquista!\n"
        // Setando a parte da string que será bold
        let bold = [NSAttributedString.Key.font : UIFont.boldSystemFont(ofSize: 22)]
        let boldString = NSMutableAttributedString(string:boldText, attributes:bold)
        // Setando a parte da string que será regular
        let regular = [NSAttributedString.Key.font : UIFont.systemFont(ofSize: 22)]
        let regularString = NSMutableAttributedString(string:regularText, attributes: regular)
        // Juntando as duas strings e configurando a label
        regularString.append(boldString)
        ganhoConquistaView.descricaoLabel.attributedText = regularString
    }
    
    func setupImage(){
        ganhoConquistaView.imagemConquista.image = UIImage(named: Conquista.conquistas()[indexReceita!].imagem[1])
        ganhoConquistaView.descricaoConquista.text = Conquista.conquistas()[indexReceita!].nome[1]
    }

}

extension GanhoConquistaViewController: ButtonDelegate{
    func sair() {
        
    }
    
    func continuar() {
        
    }
    
    func menu() {
        
    }
    
    func passarTela() {
        Conquista.desbloqueadas[indexReceita!] = true
        Conquista.veioDeOnde = "ganhoConquista"
        print(Conquista.desbloqueadas)
        self.navigationController?.popToRootViewController(animated: true)
    }
    
    
}


// MARK: - Preview
#if DEBUG
import SwiftUI
@available(iOS 13, *)
struct GanhoConquistaViewController_Preview: PreviewProvider {
    static var previews: some View {
        // view controller using programmatic UI
        Group {
            GanhoConquistaViewController().showPreview().previewDevice("iPhone 13")
            GanhoConquistaViewController().showPreview().previewDevice("iPhone 13").previewInterfaceOrientation(.landscapeLeft)
        }
    }
}
#endif
