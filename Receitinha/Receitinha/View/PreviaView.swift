//
//  PreviaView.swift
//  Receitinha
//
//  Created by ditthales on 14/09/22.
//

import UIKit

class PreviaView: UIView {
    
    //qual modo de stackview usar - ela se adaptar ao conteudo dentro dela
    //pode travar a rotação?
    //pq nao ta aparecendo nada no preview? - já apareceu =)
    //povoar apenas no VC? como fazer isso?
    //como adicionar raio na borda do botao
    //como configura scroll view aaaaaaaaaaaaaaaaaaaaaaaaaa - consegui +-
    
    let scrollView = UIScrollView()
        let contentView = UIView()
        
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
                    let buttonIniciarReceita = UIButton(configuration: .filled())
    
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
        self.addSubview(scrollView)
        
        scrollView.addSubview(contentView)
        
        contentView.addSubview(stackViewGlobal)
        
        stackViewGlobal.addArrangedSubview(imagemCapaContainer)
        stackViewGlobal.addArrangedSubview(stackViewCardsContainer)
        stackViewGlobal.addArrangedSubview(linhaView1)
        stackViewGlobal.addArrangedSubview(descricaoLabelContainer)
        stackViewGlobal.addArrangedSubview(linhaView2)
        stackViewGlobal.addArrangedSubview(stackObjetosContainer)
        stackViewGlobal.addArrangedSubview(stackIngredientesContainer)
        stackViewGlobal.addArrangedSubview(buttonIniciarReceitaContainer)
        
        imagemCapaContainer.addSubview(imagemCapa)
        
        stackViewCardsContainer.addSubview(stackViewCards)
        stackViewCards.addArrangedSubview(cardTempoContainer)
        cardTempoContainer.addSubview(stackViewCardTempo)
        stackViewCardTempo.addArrangedSubview(iconAlarmContainer)
        iconAlarmContainer.addSubview(iconAlarm)
        stackViewCardTempo.addArrangedSubview(labelDuracao)
        stackViewCardTempo.addArrangedSubview(labelTempoDuracao)
        stackViewCards.addArrangedSubview(cardDificuldadeContainer)
        cardDificuldadeContainer.addSubview(stackViewCardDificuldade)
        stackViewCardDificuldade.addArrangedSubview(iconDificuldadeContainer)
        iconDificuldadeContainer.addSubview(iconDificuldade)
        stackViewCardDificuldade.addArrangedSubview(labelDificuldade)
        stackViewCardDificuldade.addArrangedSubview(labelDificuldadeDificuldade)
        
        
        descricaoLabelContainer.addSubview(descricaoLabel)
        
        stackObjetosContainer.addSubview(stackObjetos)
        stackObjetos.addArrangedSubview(objetosLabelContainer)
        objetosLabelContainer.addSubview(objetosLabel)
        stackObjetos.addArrangedSubview(listaObjetosLabelContainer)
        listaObjetosLabelContainer.addSubview(listaObjetosLabel)
        
        
        stackIngredientesContainer.addSubview(stackIngredientes)
        stackIngredientes.addArrangedSubview(ingredientesLabelContainer)
        ingredientesLabelContainer.addSubview(ingredientesLabel)
        stackIngredientes.addArrangedSubview(listaIngredientesLabelContainer)
        listaObjetosLabelContainer.addSubview(listaIngredientesLabel)
        
        buttonIniciarReceitaContainer.addSubview(buttonIniciarReceita)
    }
    
    fileprivate func setupViewAttributes(){
        
        imagemCapa.contentMode = .scaleAspectFit
        iconAlarm.contentMode = .scaleAspectFit
        iconDificuldade.contentMode = .scaleAspectFit
        
        stackViewGlobal.axis = .vertical
        stackViewGlobal.alignment = .fill
        stackViewGlobal.distribution = .equalSpacing
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
        buttonIniciarReceita.layer.cornerRadius = 50
        
        self.backgroundColor = .green
        stackViewGlobal.backgroundColor = .white
        buttonIniciarReceitaContainer.backgroundColor = .systemCyan
        imagemCapaContainer.backgroundColor = .red
        
        imagemCapa.image = UIImage(named: "IMG_MistoQuente_Preview")
        imagemCapa.contentMode = .scaleAspectFit
        
        objetosLabelContainer.backgroundColor = .blue
        
        
        
    }
    
    fileprivate func setupConstraints(){
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            scrollView.heightAnchor.constraint(equalTo: self.heightAnchor),
            scrollView.widthAnchor.constraint(equalTo: self.widthAnchor),
            scrollView.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            scrollView.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            
        ])
        // TODO: -AJUSTAR O TAMANHO DA SCROLL
        scrollView.contentSize = CGSize(width: scrollView.contentSize.width, height: UIScreen.main.bounds.height*100)
        
        contentView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            contentView.widthAnchor.constraint(equalTo: scrollView.widthAnchor),
            contentView.topAnchor.constraint(equalTo: scrollView.topAnchor),
            contentView.heightAnchor.constraint(equalTo: scrollView.heightAnchor)
        ])
        
        stackViewGlobal.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            stackViewGlobal.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 16),
            stackViewGlobal.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 16),
            stackViewGlobal.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -16),
            stackViewGlobal.bottomAnchor.constraint(equalTo: contentView.bottomAnchor)
        ])
        
        imagemCapaContainer.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            imagemCapaContainer.heightAnchor.constraint(equalTo: imagemCapa.heightAnchor)
        ])
        
        imagemCapa.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            imagemCapa.leadingAnchor.constraint(equalTo: imagemCapaContainer.leadingAnchor, constant: 8),
            imagemCapa.trailingAnchor.constraint(equalTo: imagemCapaContainer.trailingAnchor, constant: -8),
            imagemCapa.centerYAnchor.constraint(equalTo: imagemCapaContainer.centerYAnchor)
        ])
        
        stackViewCardsContainer.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            stackViewCardsContainer.heightAnchor.constraint(equalToConstant: 100)
        ])
        
        stackViewCards.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            stackViewCards.heightAnchor.constraint(equalToConstant: <#T##CGFloat#>)
        ])
        
        buttonIniciarReceitaContainer.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            buttonIniciarReceitaContainer.heightAnchor.constraint(equalTo: buttonIniciarReceita.heightAnchor)
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
