//
//  CheckView.swift
//  Receitinha
//
//  Created by rsbj on 17/09/22.
//

import UIKit

class CheckView: UIView {
    
    weak var delegate: ButtonDelegate?
    
    let button: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("  Próximo passo ", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.tintColor = UIColor(named: "azul-acao")
        button.layer.cornerRadius = 25
        button.backgroundColor = UIColor(named: "azul-acao")
//        button.setImage(iconProximo, for: .normal)
        button.imageView?.contentMode = .scaleAspectFit
        button.semanticContentAttribute = UIApplication.shared
            .userInterfaceLayoutDirection == .rightToLeft ? .forceLeftToRight : .forceRightToLeft
        //shadow do botao
        button.layer.shadowOffset = CGSize(width: 0, height: 3)
        button.layer.shadowRadius = 10
        button.layer.shadowColor = UIColor.black.cgColor
        button.layer.shadowOpacity = 0.25
        return button
    }()
    
    let scrollView: UIScrollView = {
        var scroll = UIScrollView()
        scroll.showsVerticalScrollIndicator = false
//        scroll.contentSize = CGSize(width: UIScreen.main.bounds.width, height: 1110)
        return scroll
    }()
    
    
    let contentView = UIView()
    
    let titleLabelContainer = UIView()
    
    let titleLabel: UILabel = {
       let label = UILabel()
        label.text = "Muito Bem!"
        label.textAlignment = .center
        label.textColor = .black
        label.font = UIFont.boldSystemFont(ofSize: 28)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.numberOfLines = 0
        return label
    }()
    
    let cenouraImageContainer = UIView()
    
    let cenouraImage : UIImageView = {
        let image = UIImage(named: "cenourinhaCheck")
        let imageView = UIImageView()
        imageView.image = image
        imageView.contentMode = .scaleAspectFit
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    let subTitleLabelContainer = UIView()
    
    let subTitleLabel: UILabel = {
       let label = UILabel()
        label.numberOfLines = 0
        label.textAlignment = .center
        label.text = "Você finalizou os preparativos!"
        label.textColor = .black
        label.font = UIFont.boldSystemFont(ofSize: 22)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let descLabelContainer = UIView()
    
    let descLabel: UILabel = {
       let label = UILabel()
        label.text = "Agora confira se você tem todos os itens e ingredientes organizados."
        label.numberOfLines = 0
//        label.minimumScaleFactor = 18
        label.textColor = .black
        label.font = UIFont.systemFont(ofSize: 20)
        label.translatesAutoresizingMaskIntoConstraints = false
//        label.backgroundColor = .red
        return label
    }()
    
    let stackzona: UIStackView = {
        let stack = UIStackView()
        stack.axis = .vertical
        stack.alignment = .fill
  //      stack.distribution = .fillEqually
        stack.spacing = 24
        return stack
    }()
    
    
    lazy var tableView: UITableView = {
        let tableView = UITableView(frame: .zero, style: .plain)
        tableView.showsVerticalScrollIndicator = false
//        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.isScrollEnabled = true
        tableView.separatorColor = UIColor(named: "blueBackground")
//        tableView.backgroundView?.backgroundColor = .green
        tableView.register(CheckTableViewCell.self, forCellReuseIdentifier: CheckTableViewCell.indentifier)
        tableView.rowHeight = UITableView.automaticDimension
        tableView.estimatedRowHeight = 56
        return tableView
    }()
    
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
            self.backgroundColor = UIColor(named: "blueBackground")
            setupHierarquia()
            setupViewsAttributes()
            setupConstraints()
            setupButton()
        }
    
        required init?(coder aDecoder: NSCoder) {
            fatalError("init(coder:) has not been implemented")
        }
    
    private func setupHierarquia(){

        self.addSubview(stackzona)
        self.addSubview(button)
        self.addSubview(popupBackgroundView)
        
        popupBackgroundView.addSubview(popupView)
        popupView.addSubview(popupStackView)
        
        popupStackView.addArrangedSubview(popupImageView)
        popupStackView.addArrangedSubview(popupPerguntaLabel)
        popupStackView.addArrangedSubview(popupAvisoLabel)
        popupStackView.addArrangedSubview(popupButtonsStackView)
        
        popupButtonsStackView.addArrangedSubview(popupButtonContinuar)
        popupButtonsStackView.addArrangedSubview(popupButtonMenu)
        
        titleLabelContainer.addSubview(titleLabel)
        subTitleLabelContainer.addSubview(subTitleLabel)
        cenouraImageContainer.addSubview(cenouraImage)
        descLabelContainer.addSubview(descLabel)
        stackzona.addArrangedSubview(titleLabelContainer)
        stackzona.addArrangedSubview(cenouraImageContainer)
        stackzona.addArrangedSubview(subTitleLabelContainer)
        stackzona.addArrangedSubview(descLabelContainer)
        stackzona.addArrangedSubview(tableView)
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
    }
    
    private func setupConstraints(){
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
        
        stackzona.translatesAutoresizingMaskIntoConstraints = false
        titleLabelContainer.translatesAutoresizingMaskIntoConstraints = false
        cenouraImageContainer.translatesAutoresizingMaskIntoConstraints = false
        subTitleLabelContainer.translatesAutoresizingMaskIntoConstraints = false
        descLabel.translatesAutoresizingMaskIntoConstraints = false

        button.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            button.leadingAnchor.constraint(equalTo: self.leadingAnchor,constant: 16),
            button.heightAnchor.constraint(equalToConstant: 58),
            button.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            button.bottomAnchor.constraint(equalTo: self.safeAreaLayoutGuide.bottomAnchor,constant: -16)
        ])
        
        NSLayoutConstraint.activate([
            stackzona.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor,constant: 16),
            stackzona.leadingAnchor.constraint(equalTo: self.leadingAnchor,constant: 16),
            stackzona.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            stackzona.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            stackzona.bottomAnchor.constraint(equalTo: button.topAnchor,constant: -16)
        ])
        
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: titleLabelContainer.topAnchor),
            titleLabel.leadingAnchor.constraint(equalTo: titleLabelContainer.leadingAnchor),
            titleLabel.centerXAnchor.constraint(equalTo: titleLabelContainer.centerXAnchor),
            titleLabel.centerYAnchor.constraint(equalTo: titleLabelContainer.centerYAnchor)
        ])

        NSLayoutConstraint.activate([
            subTitleLabel.topAnchor.constraint(equalTo: subTitleLabelContainer.topAnchor),
            subTitleLabel.leadingAnchor.constraint(equalTo: subTitleLabelContainer.leadingAnchor),
            subTitleLabel.centerXAnchor.constraint(equalTo: subTitleLabelContainer.centerXAnchor),
            subTitleLabel.centerYAnchor.constraint(equalTo: subTitleLabelContainer.centerYAnchor)
        ])
        subTitleLabel.setContentHuggingPriority(.defaultLow, for: .vertical)
        subTitleLabelContainer.setContentHuggingPriority(.defaultLow, for: .vertical)


        NSLayoutConstraint.activate([
            cenouraImage.topAnchor.constraint(equalTo: cenouraImageContainer.topAnchor),
            cenouraImage.leadingAnchor.constraint(equalTo: cenouraImageContainer.leadingAnchor),
            cenouraImage.centerXAnchor.constraint(equalTo: cenouraImageContainer.centerXAnchor),
            cenouraImage.centerYAnchor.constraint(equalTo: cenouraImageContainer.centerYAnchor)
        ])
        cenouraImage.setContentHuggingPriority(.defaultLow, for: .vertical)
        cenouraImageContainer.setContentHuggingPriority(.defaultLow, for: .vertical)


        NSLayoutConstraint.activate([
            descLabel.topAnchor.constraint(equalTo: descLabelContainer.topAnchor),
            descLabel.leadingAnchor.constraint(equalTo: descLabelContainer.leadingAnchor),
            descLabel.centerXAnchor.constraint(equalTo: descLabelContainer.centerXAnchor),
            descLabel.centerYAnchor.constraint(equalTo: descLabelContainer.centerYAnchor)
        ])
        descLabel.setContentHuggingPriority(.defaultLow, for: .vertical)
        descLabelContainer.setContentHuggingPriority(.defaultLow, for: .vertical)


        
        tableView.setContentHuggingPriority(.defaultHigh, for: .vertical)
    }
    
    private func setupButton(){
        button.addTarget(self, action: #selector(tappedButton), for: .touchUpInside)
        
        popupButtonContinuar.addTarget(self, action: #selector(tappedButton), for: .touchUpInside)
        
        popupButtonMenu.addTarget(self, action: #selector(tappedButton), for: .touchUpInside)
    }

    @objc func tappedButton(sender: UIButton) {
        if sender == button {
            delegate?.passarTela()
        }
        else if sender == popupButtonContinuar {
            delegate?.continuar()
        }
        else if sender == popupButtonMenu {
            delegate?.menu()
        }
    }

}

// MARK: - Preview
#if DEBUG
import SwiftUI
@available(iOS 13, *)
struct CheckView_Preview: PreviewProvider {
    static var previews: some View {
        // view controller using programmatic UI
        Group {
            CheckView().showPreview().previewDevice("iPhone SE (3rd generation)")
            CheckView().showPreview().previewDevice("iPhone SE (3rd generation)").previewInterfaceOrientation(.landscapeLeft)
        }
    }
}
#endif
