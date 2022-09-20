//
//  GanhoConquistasView.swift
//  Receitinha
//
//  Created by lss8 on 17/09/22.
//

import UIKit

class GanhoConquistaView: UIView {
    
    weak var delegate: ButtonDelegate?
    // MARK: - Inicializacao dos componentes
    let regularText = "Você desbloqueou uma nova conquista! Agora você é um:\n"
    let boldText = "Mestre da Banana!"
    
    let tituloLabel = UILabel()
    let imagemConquista = UIImageView(image: UIImage(named: "IMG_GanhoConquistaBanana"))
    let descricaoLabel = UILabel()
    let botao = UIButton()
    
    let tituloLabelContainer = UIView()
    let imagemConquistaContainer = UIView()
    let descricaoLabelContainer = UIView()
    let botaoContainer = UIView()
    
    let finalStackView = UIStackView()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupViewsHierarchy()
        setupViewsAttributes()
        setupConstraints()
        setupButton()
    }
    
    required init(coder: NSCoder) {
        fatalError("ïnit(coder:) has not been implemented")
    }
    
    func setupViewsHierarchy() {
        // MARK: - Setup na hierarquia das views
        self.addSubview(finalStackView)
        
        tituloLabelContainer.addSubview(tituloLabel)
        imagemConquistaContainer.addSubview(imagemConquista)
        descricaoLabelContainer.addSubview(descricaoLabel)
        botaoContainer.addSubview(botao)
        
        finalStackView.addArrangedSubview(tituloLabelContainer)
        finalStackView.addArrangedSubview(imagemConquistaContainer)
        finalStackView.addArrangedSubview(descricaoLabelContainer)
        finalStackView.addArrangedSubview(botaoContainer)
    }
    
    func setupViewsAttributes() {
        tituloLabel.contentMode = .scaleAspectFit
        imagemConquista.contentMode = .scaleAspectFit
        descricaoLabel.contentMode = .scaleAspectFit
        botao.contentMode = .scaleAspectFit
        
        tituloLabel.text = "Incrível"
        tituloLabel.textAlignment = .center
        tituloLabel.font = UIFont.boldSystemFont(ofSize: 34.0)
        
        // Setando a parte da string que será bold
        let bold = [NSAttributedString.Key.font : UIFont.boldSystemFont(ofSize: 22)]
        let boldString = NSMutableAttributedString(string:boldText, attributes:bold)
        // Setando a parte da string que será regular
        let regular = [NSAttributedString.Key.font : UIFont.systemFont(ofSize: 22)]
        let regularString = NSMutableAttributedString(string:regularText, attributes: regular)
        // Juntando as duas strings e configurando a label
        regularString.append(boldString)
        descricaoLabel.attributedText = regularString
        descricaoLabel.textAlignment = .center
        descricaoLabel.numberOfLines = 0
        
        finalStackView.axis = .vertical
        finalStackView.alignment = .fill
        finalStackView.distribution = .equalSpacing
        
        botao.setTitle("Ir para coleção de conquistas", for: .normal)
        botao.setTitleColor(.white, for: .normal)
        botao.backgroundColor = UIColor(named: "azul-acao")
        botao.layer.cornerRadius = 25
        botao.backgroundColor = UIColor(named: "azul-acao")
        //shadow do botao
        botao.layer.shadowOffset = CGSize(width: 0, height: 3)
        botao.layer.shadowRadius = 10
        botao.layer.shadowColor = UIColor.black.cgColor
        botao.layer.shadowOpacity = 0.25
        
    }
    
    func setupConstraints() {
        // MARK: - Configuracao das constraints de auto layout
        finalStackView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            finalStackView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 32),
            finalStackView.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 24),
            finalStackView.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor),
            finalStackView.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -24)
        ])
        
        tituloLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            tituloLabel.topAnchor.constraint(equalTo: tituloLabelContainer.topAnchor),
            tituloLabel.bottomAnchor.constraint(equalTo: tituloLabelContainer.bottomAnchor),
            tituloLabel.leadingAnchor.constraint(equalTo: tituloLabelContainer.leadingAnchor),
            tituloLabel.trailingAnchor.constraint(equalTo: tituloLabelContainer.trailingAnchor)
        ])
        tituloLabel.setContentHuggingPriority(.defaultHigh, for: .vertical)
        tituloLabelContainer.translatesAutoresizingMaskIntoConstraints = false
        tituloLabelContainer.setContentHuggingPriority(.defaultHigh, for: .vertical)
        
        imagemConquista.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            imagemConquista.topAnchor.constraint(equalTo: imagemConquistaContainer.topAnchor),
            imagemConquista.bottomAnchor.constraint(equalTo: imagemConquistaContainer.bottomAnchor),
            imagemConquista.leadingAnchor.constraint(equalTo: imagemConquistaContainer.leadingAnchor),
            imagemConquista.trailingAnchor.constraint(equalTo: imagemConquistaContainer.trailingAnchor)
        ])
        imagemConquista.setContentHuggingPriority(.defaultHigh, for: .vertical)
        imagemConquistaContainer.translatesAutoresizingMaskIntoConstraints = false
        imagemConquistaContainer.setContentHuggingPriority(.defaultLow, for: .vertical)
        
        descricaoLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            descricaoLabel.topAnchor.constraint(equalTo: descricaoLabelContainer.topAnchor),
            descricaoLabel.bottomAnchor.constraint(equalTo: descricaoLabelContainer.bottomAnchor),
            descricaoLabel.leadingAnchor.constraint(equalTo: descricaoLabelContainer.leadingAnchor),
            descricaoLabel.trailingAnchor.constraint(equalTo: descricaoLabelContainer.trailingAnchor)
        ])
        descricaoLabel.setContentHuggingPriority(.defaultLow, for: .vertical)
        descricaoLabelContainer.translatesAutoresizingMaskIntoConstraints = false
        descricaoLabelContainer.setContentHuggingPriority(.defaultLow, for: .vertical)
        
        botao.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            botao.topAnchor.constraint(equalTo: botaoContainer.topAnchor),
            botao.bottomAnchor.constraint(equalTo: botaoContainer.bottomAnchor, constant: -8),
            botao.leadingAnchor.constraint(equalTo: botaoContainer.leadingAnchor),
            botao.trailingAnchor.constraint(equalTo: botaoContainer.trailingAnchor),
            botao.heightAnchor.constraint(equalToConstant: 56)
        ])
    }
    
    func setupButton(){
        botao.addTarget(self, action: #selector(tappedButton), for: .touchUpInside)
    }
    
    @objc func tappedButton(){
        delegate?.passarTela()
    }
    
}

// MARK: - Preview
#if DEBUG
import SwiftUI

@available(iOS 13, *)
struct GanhoConquistaView_Preview: PreviewProvider {
    static var previews: some View {
        Group {
            GanhoConquistaView().showPreview().previewDevice("iPhone 14")
            GanhoConquistaView().showPreview().previewDevice("iPhone 13").previewInterfaceOrientation(.landscapeLeft)
        }
    }
}
#endif
