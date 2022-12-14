//
//  PreviaViewController.swift
//  Receitinha
//
//  Created by ditthales on 14/09/22.
//

import UIKit
import LocalAuthentication

class PreviaViewController: UIViewController {
    
    var indexReceita: Int?
    let previaView = PreviaView()
    let receitas = Receita.receitas()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view = previaView
        setupPreviaViewController()
        previaView.delegate = self
        
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.navigationBar.prefersLargeTitles = true
        self.tabBarController?.tabBar.isHidden = true
    }
    
    func setupPreviaViewController () {
        view.backgroundColor = UIColor(named: "blueBackground")
        self.navigationItem.title = receitas[indexReceita!].titulo
        
        
        previaView.imagemCapa.image = UIImage(named: receitas[indexReceita!].imagemPrevia)
        previaView.descricaoLabel.text = receitas[indexReceita!].descricaoPrevia
        let objetosIngredientes = gerarListas()
        previaView.listaObjetosLabel.text = objetosIngredientes[0]
        previaView.listaIngredientesLabel.text = objetosIngredientes[1]
        previaView.labelTempoDuracao.text = "\(String(receitas[indexReceita!].duracao)) minutos"
        previaView.labelDificuldadeDificuldade.text = receitas[indexReceita!].dificuldade
        
        if receitas[indexReceita!].precisaAuxilio{
            previaView.buttonIniciarReceita.setTitle("Desbloquear Receita", for: .normal)
            previaView.buttonIniciarReceita.backgroundColor = .lightGray
        }
        else{
            
        }
    }
    
    func gerarListas () -> [String]{
        var array: [String] = []
        var textoObjetos = ""
        var textoIngredientes = ""
        receitas[indexReceita!].objetos.enumerated().forEach{ (index, objeto) in
            textoObjetos = "\(textoObjetos)• \(objeto)\n"
        }
        receitas[indexReceita!].ingredientes.enumerated().forEach{ (index, ingrediente) in
            textoIngredientes = "\(textoIngredientes)• \(ingrediente)\n"
        }
        array.append(textoObjetos)
        array.append(textoIngredientes)
        return array
    }
}

// MARK: - Preview
#if DEBUG
import SwiftUI

@available(iOS 13, *)
struct PreviaViewController_Preview: PreviewProvider {
    static var previews: some View {
        Group {
            PreviaViewController().showPreview().previewDevice("iPhone SE (3rd generation)")
            PreviaViewController().showPreview().previewDevice("iPhone SE (3rd generation)").previewInterfaceOrientation(.landscapeLeft)
        }
    }
}
#endif
