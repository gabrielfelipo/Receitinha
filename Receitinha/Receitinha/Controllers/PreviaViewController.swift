//
//  PreviaViewController.swift
//  Receitinha
//
//  Created by ditthales on 14/09/22.
//

import UIKit

class PreviaViewController: UIViewController {
    
    var i: Int? = 1
    let previaView = PreviaView()
    let receitas = Receita.receitas()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view = previaView
        setupPreviaViewController()
        previaView.delegate = self

        // Do any additional setup after loading the view.
    }
    
    func setupPreviaViewController () {
        view.backgroundColor = UIColor(named: "blueBackground")
        self.navigationItem.title = receitas[i!].titulo
        // TODO: SETAR O LEFT ITEM (PRECISA DE ALGUM VC ANTES)
        self.navigationItem.leftBarButtonItem?.title = "Voltar para o menu"
        
        previaView.imagemCapa.image = UIImage(named: receitas[i!].imagemPrevia)
        previaView.descricaoLabel.text = receitas[i!].descricaoPrevia
        let objetosIngredientes = gerarListas()
        previaView.listaObjetosLabel.text = objetosIngredientes[0]
        previaView.listaIngredientesLabel.text = objetosIngredientes[1]
        previaView.labelTempoDuracao.text = "\(String(receitas[i!].duracao)) minutos"
        previaView.labelDificuldadeDificuldade.text = receitas[i!].dificuldade
    }
    
    func gerarListas () -> [String]{
        var array: [String] = []
        var textoObjetos = ""
        var textoIngredientes = ""
        receitas[i!].objetos.enumerated().forEach{ (index, objeto) in
            textoObjetos = "\(textoObjetos)• \(objeto)\n"
        }
        receitas[i!].ingredientes.enumerated().forEach{ (index, ingrediente) in
            textoIngredientes = "\(textoIngredientes)• \(ingrediente)\n"
        }
        array.append(textoObjetos)
        array.append(textoIngredientes)
        return array
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
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
