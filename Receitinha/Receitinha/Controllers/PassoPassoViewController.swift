//
//  PassoPassoViewControler.swift
//  Receitinha
//
//  Created by lss8 on 14/09/22.
//

import UIKit
import AVFoundation

class PassoPassoViewController: UIViewController {
    
    var receitaIndex: Int?
    var visitCheckpoint: Bool? = false
    var passo = 0
    let passoPassoView = PassoPassoView()
    let receitas = Receita.receitas()
    var player: AVAudioPlayer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view = passoPassoView
        setupPassoPassoViewController()
        passoPassoView.delegate = self
        
        // Do any additional setup after loading the view.
    }
    
    func getJsonPasso() {
        passoPassoView.passoAtual.text = "Preparação: Passo \(passo+1) de \(receitas[receitaIndex!].audioDescricao.count)"
        passoPassoView.imagemPasso.image = UIImage(named: receitas[receitaIndex!].imagem[passo])
        passoPassoView.tituloDescricao.text = receitas[receitaIndex!].tituloInstrucao[passo]
        if receitas[receitaIndex!].descricao[passo] == ""{
            passoPassoView.corpoDescricaoStackView.isHidden = true
        }else{
            passoPassoView.corpoDescricaoStackView.isHidden = false
        }
        passoPassoView.corpoDescricao.text = receitas[receitaIndex!].descricao[passo]
    }
    
    func setupPassoPassoViewController () {
        view.backgroundColor = UIColor(named: "blueBackground")
        self.navigationController?.navigationBar.prefersLargeTitles = false
        passoPassoView.tituloReceita.text = receitas[receitaIndex!].titulo
        
        //setup da progress bar
        passoPassoView.setupProgressBar(quantidadePassos: receitas[receitaIndex!].audioDescricao.count)
        
        getJsonPasso()
        
    }

}


// MARK: - Preview
#if DEBUG
import SwiftUI
@available(iOS 13, *)
struct PassoPassoViewController_Preview: PreviewProvider {
    static var previews: some View {
        // view controller using programmatic UI
        Group {
            PassoPassoViewController().showPreview().previewDevice("iPhone 13")
            PassoPassoViewController().showPreview().previewDevice("iPhone 13").previewInterfaceOrientation(.landscapeLeft)
        }
    }
}
#endif

