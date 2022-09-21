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
    
    let tituloLabel = UILabel()
    let backgroundConquista = UIImageView(image: UIImage(named: "IMG_GanhoConquista"))
    let imagemConquista = UIImageView()
    let descricaoConquista = UILabel()
    
    let descricaoLabel = UILabel()
    let botao = UIButton()
    
    let tituloLabelContainer = UIView()
    let backgroundConquistaContainer = UIView()
    let imagemConquistaContainer = UIView()
    let descricaoConquistaContainer = UIView()
    let descricaoLabelContainer = UIView()
    let botaoContainer = UIView()
    
    let finalStackView = UIStackView()
    let conquistaStackView = UIStackView()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        print("entrou no init da view")
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
        descricaoLabelContainer.addSubview(descricaoLabel)
        botaoContainer.addSubview(botao)
        descricaoConquistaContainer.addSubview(descricaoConquista)
        imagemConquistaContainer.addSubview(imagemConquista)
        
        backgroundConquistaContainer.addSubview(backgroundConquista)
        backgroundConquistaContainer.addSubview(conquistaStackView)
        
        conquistaStackView.addArrangedSubview(imagemConquistaContainer)
        conquistaStackView.addArrangedSubview(descricaoConquistaContainer)
        
        finalStackView.addArrangedSubview(tituloLabelContainer)
        finalStackView.addArrangedSubview(backgroundConquistaContainer)
        finalStackView.addArrangedSubview(descricaoLabelContainer)
        finalStackView.addArrangedSubview(botaoContainer)
    }
    
    func setupViewsAttributes() {
        tituloLabel.contentMode = .scaleAspectFit
        backgroundConquista.contentMode = .scaleAspectFit
        descricaoLabel.contentMode = .scaleAspectFit
        botao.contentMode = .scaleAspectFit
        
        tituloLabel.text = "Incrível"
        tituloLabel.textAlignment = .center
        tituloLabel.font = UIFont.boldSystemFont(ofSize: 34.0)
        
        imagemConquista.contentMode = .scaleAspectFit
        
        descricaoConquista.text = "Mestre Banana"
        descricaoConquista.textAlignment = .center
        descricaoConquista.font = UIFont.boldSystemFont(ofSize: 16.0)
        descricaoConquista.textColor = UIColor(red: 0.87, green: 0.55, blue: 0.22, alpha: 1.00)
        
        descricaoLabel.textAlignment = .center
        descricaoLabel.numberOfLines = 0
        
        conquistaStackView.axis = .vertical
        conquistaStackView.alignment = .fill
        conquistaStackView.distribution = .fill
        conquistaStackView.spacing = 10
        
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
        
        backgroundConquista.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            backgroundConquista.topAnchor.constraint(equalTo: backgroundConquistaContainer.topAnchor),
            backgroundConquista.bottomAnchor.constraint(equalTo: backgroundConquistaContainer.bottomAnchor),
            backgroundConquista.leadingAnchor.constraint(equalTo: backgroundConquistaContainer.leadingAnchor),
            backgroundConquista.trailingAnchor.constraint(equalTo: backgroundConquistaContainer.trailingAnchor)
        ])
        backgroundConquista.setContentHuggingPriority(.defaultHigh, for: .vertical)
        backgroundConquistaContainer.translatesAutoresizingMaskIntoConstraints = false
        backgroundConquistaContainer.setContentHuggingPriority(.defaultLow, for: .vertical)
        
        imagemConquista.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            imagemConquista.topAnchor.constraint(equalTo: imagemConquistaContainer.topAnchor),
            imagemConquista.bottomAnchor.constraint(equalTo: imagemConquistaContainer.bottomAnchor),
            imagemConquista.leadingAnchor.constraint(equalTo: imagemConquistaContainer.leadingAnchor),
            imagemConquista.trailingAnchor.constraint(equalTo: imagemConquistaContainer.trailingAnchor)
        ])
        imagemConquista.setContentHuggingPriority(.defaultLow, for: .vertical)
        
        descricaoConquista.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            descricaoConquista.topAnchor.constraint(equalTo: descricaoConquistaContainer.topAnchor),
            descricaoConquista.bottomAnchor.constraint(equalTo: descricaoConquistaContainer.bottomAnchor),
            descricaoConquista.leadingAnchor.constraint(equalTo: descricaoConquistaContainer.leadingAnchor),
            descricaoConquista.trailingAnchor.constraint(equalTo: descricaoConquistaContainer.trailingAnchor)
        ])
        descricaoConquista.setContentHuggingPriority(.defaultHigh, for: .vertical)
        
        conquistaStackView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            conquistaStackView.centerXAnchor.constraint(equalTo: backgroundConquistaContainer.centerXAnchor),
            conquistaStackView.centerYAnchor.constraint(equalTo: backgroundConquistaContainer.centerYAnchor)
        ])
        
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
