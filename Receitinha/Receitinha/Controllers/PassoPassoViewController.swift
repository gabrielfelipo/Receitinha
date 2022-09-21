//
//  PassoPassoViewControler.swift
//  Receitinha
//
//  Created by lss8 on 14/09/22.
//

import UIKit
import AVFoundation

@objcMembers class PassoPassoViewController: UIViewController {
    
    var receitaIndex: Int?
    var passo = 0
    let passoPassoView = PassoPassoView()
    let receitas = Receita.receitas()
    var player: AVAudioPlayer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view = passoPassoView
        setupPassoPassoViewController()
        passoPassoView.delegate = self
        
        let backItem = UIBarButtonItem(title: "X Sair da receita", style: .plain, target: self, action: #selector(sair))
        navigationItem.leftBarButtonItem = backItem

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        if self.passoPassoView.layer.bounds.height < 812{
            passoPassoView.tituloDescricao.font = .boldSystemFont(ofSize: 24)
            passoPassoView.corpoDescricao.font = .systemFont(ofSize: 18)
            passoPassoView.descricaoStackView.spacing = 0
        }
    }
    
    func getJsonPasso() {
        if passo > receitas[receitaIndex!].troca{
            passoPassoView.passoAtual.text = "Cozinhando: Passo \(passo+1) de \(receitas[receitaIndex!].audioDescricao.count)"
        }else{
            passoPassoView.passoAtual.text = "Preparação: Passo \(passo+1) de \(receitas[receitaIndex!].audioDescricao.count)"
        }
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
        //self.navigationController?.
        passoPassoView.tituloReceita.text = receitas[receitaIndex!].titulo
        
        //setup da progress bar
        passoPassoView.setupProgressBar(quantidadePassos: receitas[receitaIndex!].audioDescricao.count, passoAtual: passo)
        
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

