//
//  PreviaView.swift
//  Receitinha
//
//  Created by ditthales on 14/09/22.
//

import UIKit

class PreviaView: UIView {
    
    //pode travar a rotação?
    //como configura scroll view aaaaaaaaaaaaaaaaaaaaaaaaaa - consegui +-
    
    weak var delegate: PreviaViewDelegate?
    
    let scrollView = UIScrollView()
        let contentView = UIView()
        
    let stackViewGlobal: UIStackView = {
        let stack = UIStackView()
        stack.axis = .vertical
        stack.alignment = .fill
        stack.distribution = .equalSpacing
        stack.spacing = 24
        stack.backgroundColor = UIColor(named: "blueBackground")
        stack.layer.cornerRadius = 8
        return stack
    }()
            
                let imagemCapaContainer = UIView()
                    let imagemCapa: UIImageView = {
                        let img = UIImageView()
                        img.image = UIImage(named: "IMG_MistoQuente_Preview")
                        img.contentMode = .scaleAspectFit
                        img.tintColor = UIColor(named: "labelCardColor")
                        //img.backgroundColor = .white
                        return img
                    }()
            
                let stackViewCardsContainer = UIView()
                    let stackViewCards : UIStackView = {
                        let stack = UIStackView()
                        stack.axis = .horizontal
                        stack.alignment = .fill
                        stack.distribution = .fillEqually
                        stack.spacing = 24
                        return stack
                    }()
                
                        let cardTempoContainer = UIView()
                            let stackViewCardTempo: UIStackView = {
                                let stack = UIStackView()
                                stack.axis = .vertical
                                stack.alignment = .fill
                                stack.distribution = .fill
                                stack.spacing = 4
                                stack.backgroundColor = UIColor(named: "cardColor")
                                stack.layer.cornerRadius = 8
                                stack.layer.shadowOffset = CGSize(width: 0, height: 2)
                                stack.layer.shadowRadius = 2
                                stack.layer.shadowColor = UIColor.black.cgColor
                                stack.layer.shadowOpacity = 0.25
                                return stack
                            }()
                                let iconAlarmContainer = UIView()
                                    let iconAlarm: UIImageView = {
                                        let img = UIImageView()
                                        var imagem = UIImage(systemName: "alarm")
                                        img.image = imagem
                                        img.contentMode = .scaleAspectFit
                                        img.tintColor = UIColor(named: "labelCardColor")
                                        //img.backgroundColor = .white
                                        return img
                                    }()
                                let labelDuracao: UILabel = {
                                    let label = UILabel()
                                    label.textAlignment = .center
                                    label.text = "Duração:"
                                    label.textColor = UIColor(named: "labelCardColor")
                                    return label
                                }()
                                let labelTempoDuracao: UILabel = {
                                    let label = UILabel()
                                    label.textAlignment = .center
                                    label.text = "<x> minutos"
                                    label.textColor = UIColor(named: "labelCardColor")
                                    label.font = UIFont.boldSystemFont(ofSize: 17)
                                    return label
                                }()
                                let spacingView1: UIView = {
                                    let view = UIView()
                                    NSLayoutConstraint.activate([
                                        view.heightAnchor.constraint(equalToConstant: 8)
                                    ])
                                    return view
                                }()

                        let cardDificuldadeContainer = UIView()
                            let stackViewCardDificuldade: UIStackView = {
                                let stack = UIStackView()
                                stack.axis = .vertical
                                stack.alignment = .fill
                                stack.distribution = .fill
                                stack.spacing = 4
                                stack.backgroundColor = UIColor(named: "cardColor")
                                stack.layer.cornerRadius = 8
                                stack.layer.shadowOffset = CGSize(width: 0, height: 2)
                                stack.layer.shadowRadius = 2
                                stack.layer.shadowColor = UIColor.black.cgColor
                                stack.layer.shadowOpacity = 0.25
                                return stack
                            }()
                                let iconDificuldadeContainer = UIView()
                                    let iconDificuldade: UIImageView = {
                                        let img = UIImageView()
                                        img.image = UIImage(systemName: "chart.bar")
                                        img.tintColor = UIColor(named: "labelCardColor")
                                        img.contentMode = .scaleAspectFit
                                        //img.backgroundColor = .white
                                        return img
                                    }()
                                let labelDificuldade: UILabel = {
                                    let label = UILabel()
                                    label.text = "Dificuldade:"
                                    label.textColor = UIColor(named: "labelCardColor")
                                    label.textAlignment = .center
                                    return label
                                }()
                                let labelDificuldadeDificuldade: UILabel = {
                                    let label = UILabel()
                                    label.textAlignment = .center
                                    label.text = "<dificuldade>"
                                    label.textColor = UIColor(named: "labelCardColor")
                                    label.font = UIFont.boldSystemFont(ofSize: 17)
                                    return label
                                }()  //me perdoem por esse nome realmente n pensei num melhor
                                let spacingView2: UIView = {
                                    let view = UIView()
                                    NSLayoutConstraint.activate([
                                        view.heightAnchor.constraint(equalToConstant: 8)
                                    ])
                                    return view
                                }()
    
                let linhaView1 = LinhaView()
            
                let descricaoLabelContainer = UIView()
                    let descricaoLabel: UILabel = {
                        let label = UILabel()
                        label.textAlignment = .left
                        label.text = "<Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit.>"
                        label.font = UIFont.systemFont(ofSize: 17)
                        label.numberOfLines = 0
                        return label
                    }()
            
                let linhaView2 = LinhaView()
            
                let stackObjetosContainer = UIView()
                    let stackObjetos: UIStackView = {
                        let stack = UIStackView()
                        stack.axis = .vertical
                        stack.alignment = .fill
                        stack.distribution = .fill
                        stack.spacing = 4
                        return stack
                    }()
                        let objetosLabelContainer = UIView()
                            let objetosLabel: UILabel = {
                                let label = UILabel()
                                label.textAlignment = .left
                                label.text = "Objetos"
                                label.font = UIFont.boldSystemFont(ofSize: 22)
                                return label
                            }()
                        let listaObjetosLabelContainer = UIView()
                            let listaObjetosLabel: UILabel = {
                                let label = UILabel()
                                label.textAlignment = .left
                                label.text = "- <objeto>\n- <objeto>"
                                label.font = UIFont.systemFont(ofSize: 17)
                                label.numberOfLines = 0
                                return label
                            }()
            
                let stackIngredientesContainer = UIView()
                    let stackIngredientes: UIStackView = {
                        let stack = UIStackView()
                        stack.axis = .vertical
                        stack.alignment = .fill
                        stack.distribution = .fill
                        stack.spacing = 4
                        return stack
                    }()
                        let ingredientesLabelContainer = UIView()
                            let ingredientesLabel: UILabel = {
                                let label = UILabel()
                                label.textAlignment = .left
                                label.text = "Ingredientes"
                                label.font = UIFont.boldSystemFont(ofSize: 22)
                                return label
                            }()
                        let listaIngredientesLabelContainer = UIView()
                            let listaIngredientesLabel: UILabel = {
                                let label = UILabel()
                                label.textAlignment = .left
                                label.text = "- <ingrediente>\n- <ingrediente>\n- <ingrediente>\n- <ingrediente>"
                                label.font = UIFont.systemFont(ofSize: 17)
                                label.numberOfLines = 0
                                return label
                            }()
            
                let buttonIniciarReceitaContainer: UIView = {
                    let view = UIView()
                    //view.backgroundColor = .cyan
                    return view
                }()
                    let buttonIniciarReceita: UIButton = {
                        let button = UIButton()
                        button.setTitle("Iniciar a receita", for: .normal)
                        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 17)
                        button.setTitleColor(.white, for: .normal)
                        button.tintColor = UIColor(named: "azul-acao")
                        button.layer.cornerRadius = 25
                        button.backgroundColor = UIColor(named: "azul-acao")
                        //button.configuration = .filled()
                        button.layer.shadowOffset = CGSize(width: 0, height: 3)
                        button.layer.shadowRadius = 10
                        button.layer.shadowColor = UIColor.black.cgColor
                        button.layer.shadowOpacity = 0.25
                        return button
                    }()
                let spacingView3: UIView = {
                    let view = UIView()
                    NSLayoutConstraint.activate([
                        view.heightAnchor.constraint(equalToConstant: 0)
                    ])
                    return view
                }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViewHierarchy()
        translateMasks()
        setupConstraints()
        setupAdittionalConfiguration()
        //self.backgroundColor = .green
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    fileprivate func setupViewHierarchy(){
        self.addSubview(UIView(frame: .zero))
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
        stackViewGlobal.addArrangedSubview(spacingView3)
        
        imagemCapaContainer.addSubview(imagemCapa)
        
        stackViewCardsContainer.addSubview(stackViewCards)
        stackViewCards.addArrangedSubview(cardTempoContainer)
        cardTempoContainer.addSubview(stackViewCardTempo)
        stackViewCardTempo.addArrangedSubview(iconAlarmContainer)
        iconAlarmContainer.addSubview(iconAlarm)
        stackViewCardTempo.addArrangedSubview(labelDuracao)
        stackViewCardTempo.addArrangedSubview(labelTempoDuracao)
        stackViewCardTempo.addArrangedSubview(spacingView1)

        stackViewCards.addArrangedSubview(cardDificuldadeContainer)
        cardDificuldadeContainer.addSubview(stackViewCardDificuldade)
        stackViewCardDificuldade.addArrangedSubview(iconDificuldadeContainer)
        iconDificuldadeContainer.addSubview(iconDificuldade)
        stackViewCardDificuldade.addArrangedSubview(labelDificuldade)
        stackViewCardDificuldade.addArrangedSubview(labelDificuldadeDificuldade)
        stackViewCardDificuldade.addArrangedSubview(spacingView2)
        
        
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
        listaIngredientesLabelContainer.addSubview(listaIngredientesLabel)
        
        buttonIniciarReceitaContainer.addSubview(buttonIniciarReceita)
    }
    
    fileprivate func translateMasks(){
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        contentView.translatesAutoresizingMaskIntoConstraints = false
        stackViewGlobal.translatesAutoresizingMaskIntoConstraints = false
        imagemCapaContainer.translatesAutoresizingMaskIntoConstraints = false
        imagemCapa.translatesAutoresizingMaskIntoConstraints = false
        stackViewCardsContainer.translatesAutoresizingMaskIntoConstraints = false
        stackViewCards.translatesAutoresizingMaskIntoConstraints = false
        cardTempoContainer.translatesAutoresizingMaskIntoConstraints = false
        cardDificuldadeContainer.translatesAutoresizingMaskIntoConstraints = false
        stackViewCardTempo.translatesAutoresizingMaskIntoConstraints = false
        stackViewCardDificuldade.translatesAutoresizingMaskIntoConstraints = false
        iconAlarmContainer.translatesAutoresizingMaskIntoConstraints = false
        iconDificuldadeContainer.translatesAutoresizingMaskIntoConstraints = false
        iconAlarm.translatesAutoresizingMaskIntoConstraints = false
        iconDificuldade.translatesAutoresizingMaskIntoConstraints = false
        labelDuracao.translatesAutoresizingMaskIntoConstraints = false
        labelTempoDuracao.translatesAutoresizingMaskIntoConstraints = false
        labelDificuldade.translatesAutoresizingMaskIntoConstraints = false
        labelDificuldadeDificuldade.translatesAutoresizingMaskIntoConstraints = false
        linhaView1.translatesAutoresizingMaskIntoConstraints = false
        linhaView2.translatesAutoresizingMaskIntoConstraints = false
        objetosLabelContainer.translatesAutoresizingMaskIntoConstraints = false
        objetosLabel.translatesAutoresizingMaskIntoConstraints = false
        listaObjetosLabel.translatesAutoresizingMaskIntoConstraints = false
        ingredientesLabelContainer.translatesAutoresizingMaskIntoConstraints = false
        ingredientesLabel.translatesAutoresizingMaskIntoConstraints = false
        listaIngredientesLabel.translatesAutoresizingMaskIntoConstraints = false
        listaIngredientesLabelContainer.translatesAutoresizingMaskIntoConstraints = false
        listaObjetosLabelContainer.translatesAutoresizingMaskIntoConstraints = false
        descricaoLabelContainer.translatesAutoresizingMaskIntoConstraints = false
        descricaoLabel.translatesAutoresizingMaskIntoConstraints = false
        stackObjetosContainer.translatesAutoresizingMaskIntoConstraints = false
        stackIngredientesContainer.translatesAutoresizingMaskIntoConstraints = false
        stackIngredientes.translatesAutoresizingMaskIntoConstraints = false
        stackObjetos.translatesAutoresizingMaskIntoConstraints = false
        buttonIniciarReceitaContainer.translatesAutoresizingMaskIntoConstraints = false
        buttonIniciarReceita.translatesAutoresizingMaskIntoConstraints = false
        descricaoLabelContainer.setContentHuggingPriority(.defaultHigh, for: .vertical)
        descricaoLabelContainer.setContentCompressionResistancePriority(.defaultHigh, for: .vertical)
    }
    
    fileprivate func setupConstraints(){
        
        //constraints da scrollview
//        NSLayoutConstraint.activate([
//            scrollView.heightAnchor.constraint(equalTo: self.heightAnchor),
//            scrollView.widthAnchor.constraint(equalTo: self.safeAreaLayoutGuide.widthAnchor),
//            scrollView.centerXAnchor.constraint(equalTo: self.safeAreaLayoutGuide.centerXAnchor),
//            scrollView.centerYAnchor.constraint(equalTo: self.safeAreaLayoutGuide.centerYAnchor),
//            scrollView.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor),
////            scrollView.bottomAnchor.constraint(equalTo: self.safeAreaLayoutGuide.bottomAnchor),
////            scrollView.trailingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.trailingAnchor),
////            scrollView.leadingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leadingAnchor),
//
//
//        ])
        
        // TODO: -AJUSTAR O TAMANHO DA SCROLL
        //scrollView.contentSize = CGSize(width: scrollView.contentSize.width, height:  UIScreen.main.bounds.height*100)
        
        NSLayoutConstraint.activate([
            scrollView.widthAnchor.constraint(equalTo: safeAreaLayoutGuide.widthAnchor),
            scrollView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor),
            //scrollView.heightAnchor.constraint(equalTo: stackViewGlobal.heightAnchor),
            scrollView.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor)
        ])
        
        //constraints da contentview
        NSLayoutConstraint.activate([
            contentView.widthAnchor.constraint(equalTo: scrollView.widthAnchor),
            contentView.topAnchor.constraint(equalTo: scrollView.topAnchor),
            contentView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor)
        ])
        
        //constraints da stackview global
        NSLayoutConstraint.activate([
            stackViewGlobal.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 16),
            stackViewGlobal.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 16),
            stackViewGlobal.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -16),
            stackViewGlobal.bottomAnchor.constraint(equalTo: contentView.bottomAnchor)
        ])
        
        //constraints da imagem de capa container
        NSLayoutConstraint.activate([
            imagemCapaContainer.heightAnchor.constraint(equalToConstant: 200)
        ])
        
        //constraints da imagem de capa
        NSLayoutConstraint.activate([
            imagemCapa.leadingAnchor.constraint(equalTo: imagemCapaContainer.leadingAnchor, constant: 8),
            imagemCapa.trailingAnchor.constraint(equalTo: imagemCapaContainer.trailingAnchor, constant: -8),
            imagemCapa.centerYAnchor.constraint(equalTo: imagemCapaContainer.centerYAnchor),
            imagemCapa.centerXAnchor.constraint(equalTo: imagemCapaContainer.centerXAnchor)
        ])
        
        //constraints da stackview de cards container
        NSLayoutConstraint.activate([
            stackViewCardsContainer.heightAnchor.constraint(equalToConstant: 140),
        ])
        
        //constraints da stackview de cards
        NSLayoutConstraint.activate([
            stackViewCards.leadingAnchor.constraint(equalTo: stackViewCardsContainer.leadingAnchor),
            stackViewCards.trailingAnchor.constraint(equalTo: stackViewCardsContainer.trailingAnchor),
            stackViewCards.topAnchor.constraint(equalTo: stackViewCardsContainer.topAnchor),
            stackViewCards.bottomAnchor.constraint(equalTo: stackViewCardsContainer.bottomAnchor)
        ])
        
        //constraints da stackview de card de tempo
        NSLayoutConstraint.activate([
            stackViewCardTempo.topAnchor.constraint(equalTo: cardTempoContainer.topAnchor),
            stackViewCardTempo.bottomAnchor.constraint(equalTo: cardTempoContainer.bottomAnchor),
            stackViewCardTempo.trailingAnchor.constraint(equalTo: cardTempoContainer.trailingAnchor),
            stackViewCardTempo.leadingAnchor.constraint(equalTo: cardTempoContainer.leadingAnchor, constant: 8),
            
        ])
        
        //constraints da stackview de card de dificuldade
        NSLayoutConstraint.activate([
            stackViewCardDificuldade.topAnchor.constraint(equalTo: cardDificuldadeContainer.topAnchor),
            stackViewCardDificuldade.bottomAnchor.constraint(equalTo: cardDificuldadeContainer.bottomAnchor),
            stackViewCardDificuldade.trailingAnchor.constraint(equalTo: cardDificuldadeContainer.trailingAnchor, constant: -8),
            stackViewCardDificuldade.leadingAnchor.constraint(equalTo: cardDificuldadeContainer.leadingAnchor),
            
        ])
        
        //constraints do icone de tempo
        NSLayoutConstraint.activate([
            iconAlarm.centerYAnchor.constraint(equalTo: iconAlarmContainer.centerYAnchor),
            iconAlarm.centerXAnchor.constraint(equalTo: iconAlarmContainer.centerXAnchor),
            iconAlarm.heightAnchor.constraint(equalToConstant: 48),
            iconAlarm.widthAnchor.constraint(equalToConstant: 48)
        ])
        
        //constraints do icone de dificuldade
        NSLayoutConstraint.activate([
            iconDificuldade.centerYAnchor.constraint(equalTo: iconDificuldadeContainer.centerYAnchor),
            iconDificuldade.centerXAnchor.constraint(equalTo: iconDificuldadeContainer.centerXAnchor),
            iconDificuldade.heightAnchor.constraint(equalToConstant: 48),
            iconDificuldade.widthAnchor.constraint(equalToConstant: 48)
        ])
        
        //constraints do container de descricao
        NSLayoutConstraint.activate([
            descricaoLabelContainer.heightAnchor.constraint(equalTo: descricaoLabel.heightAnchor)
        ])
        
        //constraints da label de descricao
        NSLayoutConstraint.activate([
            descricaoLabel.leadingAnchor.constraint(equalTo: descricaoLabelContainer.leadingAnchor, constant: 8),
            descricaoLabel.trailingAnchor.constraint(equalTo: descricaoLabelContainer.trailingAnchor, constant: -8)
        ])
        
        //constraints da stack objetos containter
        NSLayoutConstraint.activate([
            stackObjetosContainer.heightAnchor.constraint(equalTo: stackObjetos.heightAnchor)
        ])
        
        //constraints da stack de objetos
        NSLayoutConstraint.activate([
            stackObjetos.topAnchor.constraint(equalTo: stackObjetosContainer.topAnchor),
            stackObjetos.bottomAnchor.constraint(equalTo: stackObjetosContainer.bottomAnchor),
            stackObjetos.leadingAnchor.constraint(equalTo: stackObjetosContainer.leadingAnchor),
            stackObjetos.trailingAnchor.constraint(equalTo: stackObjetosContainer.trailingAnchor),
            
        ])
        
        //constraints do container da label objetos
        NSLayoutConstraint.activate([
            objetosLabelContainer.heightAnchor.constraint(equalTo: objetosLabel.heightAnchor)
        ])
        
        //constraints da label de objetos
        NSLayoutConstraint.activate([
            objetosLabel.leadingAnchor.constraint(equalTo: objetosLabelContainer.leadingAnchor, constant: 8),
            objetosLabel.trailingAnchor.constraint(equalTo: objetosLabelContainer.trailingAnchor, constant: -8)
        ])
        
        //constraints do container da label lista objetos
        NSLayoutConstraint.activate([
            listaObjetosLabelContainer.heightAnchor.constraint(equalTo: listaObjetosLabel.heightAnchor)
        ])
        
        //constraints da label de lista objetos
        NSLayoutConstraint.activate([
            listaObjetosLabel.leadingAnchor.constraint(equalTo: listaObjetosLabelContainer.leadingAnchor, constant: 8),
            listaObjetosLabel.trailingAnchor.constraint(equalTo: listaObjetosLabelContainer.trailingAnchor, constant: -8)
        ])
        
        
        
        
        //constraints da stack ingredientes containter
        NSLayoutConstraint.activate([
            stackIngredientesContainer.heightAnchor.constraint(equalTo: stackIngredientes.heightAnchor)
        ])
        
        //constraints da stack de ingredientes
        NSLayoutConstraint.activate([
            stackIngredientes.topAnchor.constraint(equalTo: stackIngredientesContainer.topAnchor),
            stackIngredientes.bottomAnchor.constraint(equalTo: stackIngredientesContainer.bottomAnchor),
            stackIngredientes.leadingAnchor.constraint(equalTo: stackIngredientesContainer.leadingAnchor),
            stackIngredientes.trailingAnchor.constraint(equalTo: stackIngredientesContainer.trailingAnchor),
            
        ])
        
        //constraints do container da label ingredientes
        NSLayoutConstraint.activate([
            ingredientesLabelContainer.heightAnchor.constraint(equalTo: ingredientesLabel.heightAnchor)
        ])
        
        //constraints da label de ingredientes
        NSLayoutConstraint.activate([
            ingredientesLabel.leadingAnchor.constraint(equalTo: ingredientesLabelContainer.leadingAnchor, constant: 8),
            ingredientesLabel.trailingAnchor.constraint(equalTo: ingredientesLabelContainer.trailingAnchor, constant: -8)
        ])
        
        //constraints do container da label lista ingredientes
        NSLayoutConstraint.activate([
            listaIngredientesLabelContainer.heightAnchor.constraint(equalTo: listaIngredientesLabel.heightAnchor)
        ])
        
        //constraints da label de lista ingredientes
        NSLayoutConstraint.activate([
            listaIngredientesLabel.leadingAnchor.constraint(equalTo: listaIngredientesLabelContainer.leadingAnchor, constant: 8),
            listaIngredientesLabel.trailingAnchor.constraint(equalTo: listaIngredientesLabelContainer.trailingAnchor, constant: -8)
        ])
        
        
        
        //constraints do botao container
        NSLayoutConstraint.activate([
            buttonIniciarReceitaContainer.heightAnchor.constraint(equalTo: buttonIniciarReceita.heightAnchor)
        ])
        
        //constraints do botao
        NSLayoutConstraint.activate([
            buttonIniciarReceita.topAnchor.constraint(equalTo: buttonIniciarReceitaContainer.topAnchor),
            buttonIniciarReceita.bottomAnchor.constraint(equalTo: buttonIniciarReceitaContainer.bottomAnchor),
            buttonIniciarReceita.trailingAnchor.constraint(equalTo: buttonIniciarReceitaContainer.trailingAnchor, constant: -16),
            buttonIniciarReceita.leadingAnchor.constraint(equalTo: buttonIniciarReceitaContainer.leadingAnchor, constant: 16),
            buttonIniciarReceita.heightAnchor.constraint(equalToConstant: 60)
        ])
    }
    
    fileprivate func setupAdittionalConfiguration(){
        buttonIniciarReceita.addTarget(self, action: #selector(tappedButton(sender:)), for: .touchUpInside)
    }
    
    @objc func tappedButton (sender: UIButton){
        delegate?.iniciarReceita()
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
            PreviaView().showPreview().previewDevice("iPhone 12")
            PreviaView().showPreview().previewDevice("iPhone SE (3rd generation)").previewInterfaceOrientation(.landscapeLeft)
        }
    }
}
#endif
