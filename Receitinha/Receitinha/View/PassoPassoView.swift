//
//  PassoPassoView.swift
//  Receitinha
//
//  Created by LoreVilaca on 13/09/22.
//

import UIKit

class PassoPassoView: UIView {
    
    weak var delegate: PassoPassoDelegate?
    
    // MARK: - Inicializacao dos componentes
    let tituloReceita = UILabel()
    
    let passoAtual = UILabel()
    let barraDeProgresso = UIView()
    let stackDeProgresso = UIStackView ()
    
    let imagemPasso = UIImageView()
    
    let somBotao = UIButton()
    let iconSom = UIImage(named: "somIconEspacamento")
    
    let tituloDescricao = UILabel()
    let corpoDescricao = UILabel()
    
    let anteriorBotao = UIButton()
    let proximoBotao = UIButton()
    
    let iconProximo = UIImage(named: "nextStepSpacing")
    let iconAnterior = UIImage(named: "previousStepSpacing")
    
    let tituloReceitaContainer = UIView()
    let passoAtualContainer = UIView()
    let imagemPassoContainer = UIView()
    let somBotaoContainer = UIView()
    let tituloDescricaoContainer = UIView()
    let corpoDescricaoContainer = UIView()
    let anteriorBotaoContainer = UIView()
    let proximoContainer = UIView()
    
    let progressoStackView = UIStackView()
    let corpoDescricaoStackView = UIStackView()
    let descricaoStackView = UIStackView()
    let botaoStackView = UIStackView()
    let finalStackView = UIStackView()
    
    //MARK: - Inicialização dos componentes da PopUp
    let popupBackgroundView = UIView()
    let popupView = UIView()
    let popupStackView = UIStackView()
    let popupImageView = UIImageView()
    let popupPerguntaLabel = UILabel()
    let popupAvisoLabel = UILabel()
    let popupButtonsStackView = UIStackView()
    let popupButtonContinuar = UIButton()
    let popupButtonMenu = UIButton()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViewsHierarchy()
        setupViewsAttributes()
        setupConstraints()
        setupButtonTap()
    }
    
    required init(coder: NSCoder) {
        fatalError("Init(coder:) has not been implemented")
    }
    
    let teste2 = UIImageView ()
    
    
    func setupViewsHierarchy() {
        // MARK: - Setup na hierarquia das views
        self.addSubview(finalStackView)
        self.addSubview(popupBackgroundView)
        
        popupBackgroundView.addSubview(popupView)
        popupView.addSubview(popupStackView)
        
        popupStackView.addArrangedSubview(popupImageView)
        popupStackView.addArrangedSubview(popupPerguntaLabel)
        popupStackView.addArrangedSubview(popupAvisoLabel)
        popupStackView.addArrangedSubview(popupButtonsStackView)
        
        popupButtonsStackView.addArrangedSubview(popupButtonContinuar)
        popupButtonsStackView.addArrangedSubview(popupButtonMenu)
        
        tituloReceitaContainer.addSubview(tituloReceita)
        passoAtualContainer.addSubview(passoAtual)
        //barraDeProgressoContainer.addSubview(barraDeProgresso)
        imagemPassoContainer.addSubview(imagemPasso)
        somBotaoContainer.addSubview(somBotao)
        tituloDescricaoContainer.addSubview(tituloDescricao)
        corpoDescricaoContainer.addSubview(corpoDescricao)
        anteriorBotaoContainer.addSubview(anteriorBotao)
        proximoContainer.addSubview(proximoBotao)
        
        
        progressoStackView.addArrangedSubview(passoAtualContainer)
        progressoStackView.addArrangedSubview(barraDeProgresso)
        
        barraDeProgresso.addSubview(stackDeProgresso)
        
        corpoDescricaoStackView.addArrangedSubview(corpoDescricaoContainer)
        
        descricaoStackView.addArrangedSubview(tituloDescricaoContainer)
        descricaoStackView.addArrangedSubview(corpoDescricaoStackView)
        
        botaoStackView.addArrangedSubview(anteriorBotaoContainer)
        botaoStackView.addArrangedSubview(proximoContainer)
        
        finalStackView.addArrangedSubview(tituloReceitaContainer)
        finalStackView.addArrangedSubview(progressoStackView)
        finalStackView.addArrangedSubview(imagemPassoContainer)
        finalStackView.addArrangedSubview(somBotaoContainer)
        finalStackView.addArrangedSubview(descricaoStackView)
        finalStackView.addArrangedSubview(botaoStackView)
    }
    
    func setupViewsAttributes() {
        // MARK: - Configuracao dos atributos dos componentes
        popupBackgroundView.backgroundColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.4)
        popupView.backgroundColor = .white
        popupView.layer.borderWidth = 1
        popupView.layer.borderColor = CGColor(red: 0.68, green: 0.68, blue: 0.68, alpha: 1.00)
        popupView.layer.cornerRadius = 20
        popupBackgroundView.isHidden = true
        
        popupStackView.axis = .vertical
        popupStackView.spacing = 24
        
        popupImageView.image = UIImage(named: "CenourinhaPopExit")
        popupImageView.contentMode = .scaleAspectFit
        
        popupPerguntaLabel.text = "Você deseja sair da receita e voltar ao menu?"
        popupPerguntaLabel.numberOfLines = 2
        popupPerguntaLabel.textAlignment = .center
        popupPerguntaLabel.adjustsFontSizeToFitWidth = true
        popupPerguntaLabel.font = UIFont.boldSystemFont(ofSize: 28)
        
        popupAvisoLabel.text = "Se você sair da receita você perderá todo o progresso até aqui!"
        popupAvisoLabel.numberOfLines = 2
        popupAvisoLabel.textAlignment = .center
        popupAvisoLabel.adjustsFontSizeToFitWidth = true
        popupAvisoLabel.font = UIFont.systemFont(ofSize: 22)
        
        popupButtonsStackView.axis = .vertical
        popupButtonsStackView.spacing = 16
        
        popupButtonContinuar.setTitle("Continuar receita", for: .normal)
        popupButtonContinuar.setTitleColor(UIColor(named: "azul-acao"), for: .normal)
        popupButtonContinuar.titleLabel?.font = UIFont.boldSystemFont(ofSize: 17)
        popupButtonContinuar.tintColor = .white
        popupButtonContinuar.layer.cornerRadius = 25
        popupButtonContinuar.backgroundColor = .white
        popupButtonContinuar.layer.borderColor = UIColor(named: "azul-acao")?.cgColor
        popupButtonContinuar.layer.borderWidth = 2
        //shadow do botao
        popupButtonContinuar.layer.shadowOffset = CGSize(width: 0, height: 3)
        popupButtonContinuar.layer.shadowRadius = 10
        popupButtonContinuar.layer.shadowColor = UIColor.black.cgColor
        popupButtonContinuar.layer.shadowOpacity = 0.25
        
        popupButtonMenu.setTitle("Voltar para o menu", for: .normal)
        popupButtonMenu.setTitleColor(.white, for: .normal)
        popupButtonMenu.titleLabel?.font = UIFont.boldSystemFont(ofSize: 17)
        popupButtonMenu.tintColor = UIColor(named: "azul-acao")
        popupButtonMenu.backgroundColor = UIColor(named: "azul-acao")
        popupButtonMenu.layer.cornerRadius = 25.5
        //shadow do botao
        popupButtonMenu.layer.shadowOffset = CGSize(width: 0, height: 3)
        popupButtonMenu.layer.shadowRadius = 10
        popupButtonMenu.layer.shadowColor = UIColor.black.cgColor
        popupButtonMenu.layer.shadowOpacity = 0.25
        
        tituloReceita.contentMode = .scaleAspectFit
        passoAtual.contentMode = .scaleAspectFit
        barraDeProgresso.contentMode = .scaleAspectFit
        imagemPasso.contentMode = .scaleAspectFit
        somBotao.contentMode = .scaleAspectFit
        tituloDescricao.contentMode = .scaleAspectFit
        corpoDescricao.contentMode = .scaleAspectFit
        anteriorBotao.contentMode = .scaleAspectFit
        proximoBotao.contentMode = .scaleAspectFit
        
        tituloReceita.text = "<tituloLabel>"
        tituloReceita.textAlignment = .center
        tituloReceita.font = UIFont.boldSystemFont(ofSize: 24.0)
        
        passoAtual.text = "Preparação: Passo x de y"
        passoAtual.textAlignment = .center
        passoAtual.font = UIFont.systemFont(ofSize: 20.0)
        
        tituloDescricao.text = "<tituloDescricaoLabel>"
        tituloDescricao.textAlignment = .center
        tituloDescricao.font = UIFont.boldSystemFont(ofSize: 30.0)
        tituloDescricao.numberOfLines = 0
        
        corpoDescricao.text = "<corpoDescricaoLabel>"
        corpoDescricao.textAlignment = .center
        corpoDescricao.font = UIFont.systemFont(ofSize: 22.0)
        corpoDescricao.numberOfLines = 0
        
        //isso aqui é pra esconder caso seja preciso
        //implementar no back
        corpoDescricaoStackView.isHidden = false
        
        progressoStackView.axis = .vertical
        progressoStackView.alignment = .fill
        progressoStackView.distribution = .fillEqually
        progressoStackView.spacing = 8
        
        corpoDescricaoStackView.axis = .horizontal
        corpoDescricaoStackView.alignment = .center
        corpoDescricaoStackView.distribution = .fill
        
        descricaoStackView.axis = .vertical
        descricaoStackView.alignment = .fill
        descricaoStackView.distribution = .fill
        descricaoStackView.spacing = 10
        
        botaoStackView.axis = .horizontal
        botaoStackView.alignment = .fill
        botaoStackView.distribution = .fillEqually
        botaoStackView.spacing = 64
        
        finalStackView.axis = .vertical
        finalStackView.alignment = .fill
        finalStackView.distribution = .fill
        finalStackView.spacing = 16
        
        somBotao.setTitle(" Ouvir Instrução  ", for: .normal)
        somBotao.setTitleColor(UIColor(named: "azul-acao"), for: .normal)
        somBotao.tintColor = .white
        somBotao.layer.cornerRadius = 15
        somBotao.backgroundColor = .white
        somBotao.layer.borderWidth = 1
        somBotao.layer.borderColor = UIColor(named: "azul-acao")?.cgColor
        somBotao.setImage(iconSom, for: .normal)
        somBotao.imageView?.contentMode = .scaleAspectFit
        //shadow do botao
        somBotao.layer.shadowOffset = CGSize(width: 0, height: 1)
        somBotao.layer.shadowRadius = 2
        somBotao.layer.shadowColor = UIColor.black.cgColor
        somBotao.layer.shadowOpacity = 0.20
        
        anteriorBotao.setTitle(" Anterior  ", for: .normal)
        anteriorBotao.setTitleColor(UIColor(named: "azul-acao"), for: .normal)
        anteriorBotao.tintColor = .white
        anteriorBotao.layer.cornerRadius = 25
        anteriorBotao.backgroundColor = .white
        anteriorBotao.layer.borderColor = UIColor(named: "azul-acao")?.cgColor
        anteriorBotao.setImage(iconAnterior, for: .normal)
        anteriorBotao.imageView?.contentMode = .scaleAspectFit
        //shadow do botao
        anteriorBotao.layer.shadowOffset = CGSize(width: 0, height: 3)
        anteriorBotao.layer.shadowRadius = 10
        anteriorBotao.layer.shadowColor = UIColor.black.cgColor
        anteriorBotao.layer.shadowOpacity = 0.25
        
        proximoBotao.setTitle("  Próximo passo ", for: .normal)
        proximoBotao.setTitleColor(.white, for: .normal)
        proximoBotao.tintColor = UIColor(named: "azul-acao")
        proximoBotao.layer.cornerRadius = 25
        proximoBotao.backgroundColor = UIColor(named: "azul-acao")
        proximoBotao.setImage(iconProximo, for: .normal)
        proximoBotao.imageView?.contentMode = .scaleAspectFit
        proximoBotao.semanticContentAttribute = UIApplication.shared
            .userInterfaceLayoutDirection == .rightToLeft ? .forceLeftToRight : .forceRightToLeft
        //shadow do botao
        proximoBotao.layer.shadowOffset = CGSize(width: 0, height: 3)
        proximoBotao.layer.shadowRadius = 10
        proximoBotao.layer.shadowColor = UIColor.black.cgColor
        proximoBotao.layer.shadowOpacity = 0.25
        
        barraDeProgresso.layer.cornerRadius = 10
        barraDeProgresso.layer.borderWidth = 1
        barraDeProgresso.layer.borderColor = UIColor(red: 27/255, green: 73/255, blue: 101/255, alpha: 1).cgColor
        
        stackDeProgresso.axis = .horizontal
        stackDeProgresso.distribution = .fillEqually
        stackDeProgresso.spacing = 1
        stackDeProgresso.layer.cornerRadius = 10
        stackDeProgresso.layer.masksToBounds = true
        stackDeProgresso.backgroundColor = UIColor(red: 144/255, green: 144/255, blue: 144/255, alpha: 1)
        
    }
    
    func setupConstraints() {
        // MARK: - Configuracao das constraints de auto layout
        popupBackgroundView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            popupBackgroundView.topAnchor.constraint(equalTo: topAnchor),
            popupBackgroundView.bottomAnchor.constraint(equalTo: bottomAnchor),
            popupBackgroundView.trailingAnchor.constraint(equalTo: trailingAnchor),
            popupBackgroundView.leadingAnchor.constraint(equalTo: leadingAnchor)
        ])
        
        popupView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            popupView.centerXAnchor.constraint(equalTo: centerXAnchor),
            popupView.centerYAnchor.constraint(equalTo: centerYAnchor),
            popupView.heightAnchor.constraint(equalTo: popupBackgroundView.heightAnchor, multiplier: 0.63),
            popupView.widthAnchor.constraint(equalTo: popupBackgroundView.widthAnchor, multiplier: 0.88)
        ])
        
        popupStackView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            popupStackView.topAnchor.constraint(equalTo: popupView.topAnchor, constant: 24),
            popupStackView.bottomAnchor.constraint(equalTo: popupView.bottomAnchor, constant: -32),
            popupStackView.trailingAnchor.constraint(equalTo: popupView.trailingAnchor, constant: -24),
            popupStackView.leadingAnchor.constraint(equalTo: popupView.leadingAnchor, constant: 24)
        ])
        
        popupButtonsStackView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            popupButtonsStackView.bottomAnchor.constraint(equalTo: popupStackView.bottomAnchor)
        ])
        
        popupButtonContinuar.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            popupButtonContinuar.heightAnchor.constraint(equalToConstant: 52)
        ])
        
        popupButtonMenu.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            popupButtonMenu.leadingAnchor.constraint(equalTo: popupButtonsStackView.leadingAnchor),
            popupButtonMenu.trailingAnchor.constraint(equalTo: popupButtonsStackView.trailingAnchor),
            popupButtonMenu.heightAnchor.constraint(equalToConstant: 52)
        ])
        
        finalStackView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            finalStackView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 16),
            finalStackView.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 16),
            finalStackView.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor),
            finalStackView.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -16)
        ])
        
        tituloReceita.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            tituloReceita.topAnchor.constraint(equalTo: tituloReceitaContainer.topAnchor),
            tituloReceita.bottomAnchor.constraint(equalTo: tituloReceitaContainer.bottomAnchor),
            tituloReceita.leadingAnchor.constraint(equalTo: tituloReceitaContainer.leadingAnchor),
            tituloReceita.trailingAnchor.constraint(equalTo: tituloReceitaContainer.trailingAnchor)
        ])
        tituloReceita.setContentHuggingPriority(.defaultHigh, for: .vertical)
        tituloReceitaContainer.translatesAutoresizingMaskIntoConstraints = false
        tituloReceitaContainer.setContentHuggingPriority(.defaultHigh, for: .vertical)
        
        passoAtual.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            passoAtual.topAnchor.constraint(equalTo: passoAtualContainer.topAnchor),
            passoAtual.bottomAnchor.constraint(equalTo: passoAtualContainer.bottomAnchor),
            passoAtual.leadingAnchor.constraint(equalTo: passoAtualContainer.leadingAnchor),
            passoAtual.trailingAnchor.constraint(equalTo: passoAtualContainer.trailingAnchor)
        ])
        passoAtualContainer.translatesAutoresizingMaskIntoConstraints = false
        passoAtualContainer.setContentHuggingPriority(.defaultLow, for: .vertical)
        
        barraDeProgresso.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            barraDeProgresso.heightAnchor.constraint(equalToConstant: 25)
        ])
        
        progressoStackView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            progressoStackView.centerXAnchor.constraint(equalTo: finalStackView.centerXAnchor)
        ])
        progressoStackView.setContentHuggingPriority(.defaultHigh, for: .vertical)
        
        imagemPasso.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            imagemPasso.topAnchor.constraint(equalTo: imagemPassoContainer.topAnchor),
            imagemPasso.bottomAnchor.constraint(equalTo: imagemPassoContainer.bottomAnchor),
            imagemPasso.leadingAnchor.constraint(equalTo: imagemPassoContainer.leadingAnchor),
            imagemPasso.trailingAnchor.constraint(equalTo: imagemPassoContainer.trailingAnchor)
        ])
        imagemPasso.setContentHuggingPriority(.defaultHigh, for: .vertical)
        imagemPassoContainer.translatesAutoresizingMaskIntoConstraints = false
        imagemPassoContainer.setContentHuggingPriority(.defaultLow, for: .vertical)
        
        somBotao.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            somBotao.topAnchor.constraint(equalTo: somBotaoContainer.topAnchor),
            somBotao.bottomAnchor.constraint(equalTo: somBotaoContainer.bottomAnchor),
            somBotao.leadingAnchor.constraint(equalTo: somBotaoContainer.leadingAnchor),
            somBotao.heightAnchor.constraint(equalToConstant: 32)
        ])
        somBotao.setContentHuggingPriority(.defaultHigh, for: .vertical)
        
        tituloDescricao.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            tituloDescricao.topAnchor.constraint(equalTo: tituloDescricaoContainer.topAnchor),
            tituloDescricao.bottomAnchor.constraint(equalTo: tituloDescricaoContainer.bottomAnchor),
            tituloDescricao.leadingAnchor.constraint(equalTo: tituloDescricaoContainer.leadingAnchor),
            tituloDescricao.trailingAnchor.constraint(equalTo: tituloDescricaoContainer.trailingAnchor)
        ])
        tituloDescricaoContainer.translatesAutoresizingMaskIntoConstraints = false
        tituloDescricaoContainer.setContentHuggingPriority(.defaultLow, for: .vertical)
        
        corpoDescricao.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            corpoDescricao.topAnchor.constraint(equalTo: corpoDescricaoContainer.topAnchor),
            corpoDescricao.bottomAnchor.constraint(equalTo: corpoDescricaoContainer.bottomAnchor),
            corpoDescricao.leadingAnchor.constraint(equalTo: corpoDescricaoContainer.leadingAnchor),
            corpoDescricao.trailingAnchor.constraint(equalTo: corpoDescricaoContainer.trailingAnchor)
        ])
        corpoDescricaoContainer.translatesAutoresizingMaskIntoConstraints = false
        corpoDescricaoContainer.setContentHuggingPriority(.defaultLow, for: .vertical)
        
        descricaoStackView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            descricaoStackView.centerXAnchor.constraint(equalTo: finalStackView.centerXAnchor)
        ])
        descricaoStackView.setContentHuggingPriority(.defaultLow, for: .vertical)
        
        anteriorBotao.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            anteriorBotao.topAnchor.constraint(equalTo: anteriorBotaoContainer.topAnchor),
            anteriorBotao.bottomAnchor.constraint(equalTo: anteriorBotaoContainer.bottomAnchor),
            anteriorBotao.leadingAnchor.constraint(equalTo: anteriorBotaoContainer.leadingAnchor),
            anteriorBotao.bottomAnchor.constraint(equalTo: botaoStackView.bottomAnchor, constant: -16),
            anteriorBotao.heightAnchor.constraint(equalToConstant: 56)
        ])
        anteriorBotaoContainer.translatesAutoresizingMaskIntoConstraints = false
        anteriorBotaoContainer.setContentHuggingPriority(.defaultHigh, for: .horizontal)
        
        proximoBotao.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            proximoBotao.topAnchor.constraint(equalTo: proximoContainer.topAnchor),
            proximoBotao.bottomAnchor.constraint(equalTo: proximoContainer.bottomAnchor),
            proximoBotao.trailingAnchor.constraint(equalTo: proximoContainer.trailingAnchor),
            proximoBotao.bottomAnchor.constraint(equalTo: botaoStackView.bottomAnchor, constant: -16),
            proximoBotao.heightAnchor.constraint(equalToConstant: 56)
        ])
        proximoContainer.translatesAutoresizingMaskIntoConstraints = false
        proximoContainer.setContentHuggingPriority(.defaultLow, for: .horizontal)
        
        botaoStackView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            botaoStackView.centerXAnchor.constraint(equalTo: finalStackView.centerXAnchor),
        ])
        botaoStackView.setContentHuggingPriority(.defaultHigh, for: .vertical)
        
        
        stackDeProgresso.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            stackDeProgresso.topAnchor.constraint(equalTo: barraDeProgresso.topAnchor),
            stackDeProgresso.bottomAnchor.constraint(equalTo: barraDeProgresso.bottomAnchor),
            stackDeProgresso.leadingAnchor.constraint(equalTo: barraDeProgresso.leadingAnchor),
            stackDeProgresso.trailingAnchor.constraint(equalTo: barraDeProgresso.trailingAnchor)
        ])
        
        
    }
    
    func setupButtonTap() {
        // MARK: - Outras configuracoes
        popupButtonContinuar.addTarget(self, action: #selector(tappedButton), for: .touchUpInside)
        
        popupButtonMenu.addTarget(self, action: #selector(tappedButton), for: .touchUpInside)
        
        anteriorBotao.addTarget(self, action: #selector(tappedButton), for: .touchUpInside)
        
        proximoBotao.addTarget(self, action: #selector(tappedButton), for: .touchUpInside)
        
        somBotao.addTarget(self, action: #selector(tappedButton), for: .touchUpInside)
    }
    
    func setupProgressBar (quantidadePassos: Int, passoAtual: Int) {
        var contador: Int = 0
        while contador < quantidadePassos {
            let passoView = UIView ()
            passoView.backgroundColor = .white
            stackDeProgresso.addArrangedSubview(passoView)

            if contador <= passoAtual {
                stackDeProgresso.arrangedSubviews[contador].backgroundColor = UIColor(red: 194/255, green: 228/255, blue: 254/255, alpha: 1)
            }
            contador += 1
        }
    }
    
    func increaseProgressBar (index: Int) {
        stackDeProgresso.arrangedSubviews[index].backgroundColor = UIColor(red: 194/255, green: 228/255, blue: 254/255, alpha: 1)
    }
    
    func decreaseProgressbar (index: Int) {
        stackDeProgresso.arrangedSubviews[index].backgroundColor = .white
    }
    
    @objc func tappedButton(sender: UIButton) {
        if sender == somBotao {
            delegate?.reproducaoAudios()
        }
        else if sender == popupButtonContinuar {
            delegate?.continuar()
        }
        else if sender == popupButtonMenu {
            delegate?.menu()
        }
        else if sender == anteriorBotao {
            delegate?.anterior()
        }
        else {
            delegate?.proximo()
        }
    }
    
}

// MARK: - Preview
#if DEBUG
import SwiftUI

@available(iOS 13, *)
struct View_Preview: PreviewProvider {
    static var previews: some View {
        Group {
            PassoPassoView().showPreview().previewDevice("iPhone 13")
            PassoPassoView().showPreview().previewDevice("iPhone 13").previewInterfaceOrientation(.landscapeLeft)
        }
    }
}
#endif
