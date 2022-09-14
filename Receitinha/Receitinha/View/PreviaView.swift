//
//  PreviaView.swift
//  Receitinha
//
//  Created by ditthales on 14/09/22.
//

import UIKit

class PreviaView: UIView {
    
    //qual modo de stackview usar
    //pode travar a rotação?
    //pq nao ta aparecendo nada no preview?
    //povoar apenas no VC? como fazer isso?
    
    
    let stackViewGlobal = UIStackView()
    
        let imagemCapaContainer = UIView()
            let imagemCapa = UIImageView()
    
        let stackViewCardsContainer = UIView()
            let stackViewCards = UIStackView()
        
                let cardTempoContainer = UIView()
                    let stackViewCardTempo = UIStackView()
                        let iconAlarmContainer = UIView()
                            let iconAlarm = UIImageView()
                        let labelDuracao = UILabel()
                        let labelTempoDuracao = UILabel()

                let cardDificuldadeContainer = UIView()
                    let stackViewCardDificuldade = UIStackView()
                        let iconDificuldadeContainer = UIView()
                            let iconDificuldade = UIImageView()
                        let labelDificuldade = UILabel()
                        let labelDificuldadeDificuldade = UILabel()  //me perdoem por esse nome realmente n pensei num melhor

        let linhaView1 = LinhaView()
    
        let descricaoLabelContainer = UIView()
            let descricaoLabel = UILabel()
    
        let linhaView2 = LinhaView()
    
        let stackObjetosContainer = UIView()
            let stackObjetos = UIStackView()
                let objetosLabelContainer = UIView()
                    let objetosLabel = UILabel()
                let listaObjetosLabelContainer = UIView()
                    let listaObjetosLabel = UILabel()
    
        let stackIngredientesContainer = UIView()
            let stackIngredientes = UIStackView()
                let ingredientesLabelContainer = UIView()
                    let ingredientesLabel = UILabel()
                let listaIngredientesLabelContainer = UIView()
                    let listaIngredientesLabel = UILabel()
    
        let buttonIniciarReceitaContainer = UIView()
            let buttonIniciarReceita = UIButton()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViewHierarchy()
        setupViewAttributes()
        setupConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    fileprivate func setupViewHierarchy(){
        self.addSubview(stackViewGlobal)
        
        stackViewGlobal.addSubview(imagemCapaContainer)
        stackViewGlobal.addSubview(stackViewCardsContainer)
        stackViewGlobal.addSubview(linhaView1)
        stackViewGlobal.addSubview(descricaoLabelContainer)
        stackViewGlobal.addSubview(linhaView2)
        stackViewGlobal.addSubview(stackObjetosContainer)
        stackViewGlobal.addSubview(stackIngredientesContainer)
        stackViewGlobal.addSubview(buttonIniciarReceitaContainer)
        
        imagemCapaContainer.addSubview(imagemCapa)
        
        stackViewCardsContainer.addSubview(stackViewCards)
        stackViewCards.addSubview(cardTempoContainer)
        cardTempoContainer.addSubview(stackViewCardTempo)
        stackViewCardTempo.addSubview(iconAlarmContainer)
        iconAlarmContainer.addSubview(iconAlarm)
        stackViewCardTempo.addSubview(labelDuracao)
        stackViewCardTempo.addSubview(labelTempoDuracao)
        stackViewCards.addSubview(cardDificuldadeContainer)
        cardDificuldadeContainer.addSubview(stackViewCardDificuldade)
        stackViewCardDificuldade.addSubview(iconDificuldadeContainer)
        iconDificuldadeContainer.addSubview(iconDificuldade)
        stackViewCardDificuldade.addSubview(labelDificuldade)
        stackViewCardDificuldade.addSubview(labelDificuldadeDificuldade)
        
        
        descricaoLabelContainer.addSubview(descricaoLabel)
        
        stackObjetosContainer.addSubview(stackObjetos)
        stackObjetos.addSubview(objetosLabelContainer)
        objetosLabelContainer.addSubview(objetosLabel)
        stackObjetos.addSubview(listaObjetosLabelContainer)
        listaObjetosLabelContainer.addSubview(listaObjetosLabel)
        
        
        stackIngredientesContainer.addSubview(stackIngredientes)
        stackIngredientes.addSubview(ingredientesLabelContainer)
        ingredientesLabelContainer.addSubview(ingredientesLabel)
        stackIngredientes.addSubview(listaIngredientesLabelContainer)
        listaObjetosLabelContainer.addSubview(listaIngredientesLabel)
        
        buttonIniciarReceitaContainer.addSubview(buttonIniciarReceita)
    }
    
    fileprivate func setupViewAttributes(){
        
        imagemCapa.contentMode = .scaleAspectFit
        iconAlarm.contentMode = .scaleAspectFit
        iconDificuldade.contentMode = .scaleAspectFit
        
        stackViewGlobal.axis = .vertical
        stackViewGlobal.alignment = .fill
        stackViewGlobal.distribution = .fillEqually
        stackViewGlobal.spacing = 24
        
        stackViewCards.axis = .horizontal
        stackViewCards.alignment = .fill
        stackViewCards.distribution = .equalCentering
        
        stackViewCardTempo.axis = .vertical
        stackViewCardTempo.alignment = .fill
        //stackViewCardTempo.distribution = .naosei
        stackViewCardTempo.spacing = 24
        
        stackViewCardDificuldade.axis = .vertical
        stackViewCardDificuldade.alignment = .fill
        //stackViewCardDificuldade.distribution = .naosei
        stackViewCardDificuldade.spacing = 0
        
        stackObjetos.axis = .vertical
        stackObjetos.alignment = .fill
        //stackObjetos.distribution = .naosei
        stackObjetos.spacing = 24
        
        stackIngredientes.axis = .vertical
        stackIngredientes.alignment = .fill
        //stackIngredientes.distribution = .naosei
        stackIngredientes.spacing = 24
        
        buttonIniciarReceita.setTitle("Iniciar a receita", for: .normal)
        buttonIniciarReceita.setTitleColor(.white, for: .normal)
        buttonIniciarReceita.tintColor = UIColor(named: "azul-acao")
        
        //self.backgroundColor = .green
        stackViewGlobal.backgroundColor = .green
        buttonIniciarReceitaContainer.backgroundColor = .red
        
        
        
    }
    
    fileprivate func setupConstraints(){
        stackViewGlobal.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            stackViewGlobal.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 16),
            stackViewGlobal.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
            stackViewGlobal.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16),
            stackViewGlobal.bottomAnchor.constraint(equalTo: self.bottomAnchor)
        ])
        
        buttonIniciarReceita.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            buttonIniciarReceita.centerYAnchor.constraint(equalTo: buttonIniciarReceitaContainer.centerYAnchor),
            buttonIniciarReceita.centerXAnchor.constraint(equalTo: buttonIniciarReceitaContainer.centerXAnchor),
            buttonIniciarReceita.trailingAnchor.constraint(equalTo: buttonIniciarReceitaContainer.trailingAnchor, constant: -16),
            buttonIniciarReceita.leadingAnchor.constraint(equalTo: buttonIniciarReceitaContainer.leadingAnchor, constant: 16),
            buttonIniciarReceita.heightAnchor.constraint(equalToConstant: 60)
        ])
    }
    
    
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}

// MARK: - Preview
#if DEBUG
import SwiftUI

@available(iOS 13, *)
struct Previa_Preview: PreviewProvider {
    static var previews: some View {
        Group {
            PreviaView().showPreview().previewDevice("iPhone SE (3rd generation)")
            PreviaView().showPreview().previewDevice("iPhone SE (3rd generation)").previewInterfaceOrientation(.landscapeLeft)
        }
    }
}
#endif
