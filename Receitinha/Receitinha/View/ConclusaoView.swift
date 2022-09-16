//
//  ConclusaoView.swift
//  Receitinha
//
//  Created by LoreVilaca on 15/09/22.
//

import UIKit

class ConclusaoView: UIView {
    
    let parabensLabel: UILabel = {
        let label = UILabel ()
        label.textColor = UIColor.black
        label.font = UIFont.boldSystemFont(ofSize: 34)
        label.text = "Parabéns!"
        return label
    } ()
    
    let cenouraImage = UIImageView ()
    
    let conclusaoTituloLabel: UILabel = {
        let label = UILabel ()
        label.textColor = UIColor.black
        label.font = UIFont.boldSystemFont(ofSize: 22)
        label.text = "Você concluiu esta receita!"
        return label
    } ()
    
    let conclusaoMensagemLabel: UILabel = {
        let label = UILabel ()
        label.textColor = UIColor.black
        label.font = UIFont.systemFont(ofSize: 22)
        label.text = "Lembre-se de organizar a cozinha e aproveite sua comida!"
        return label
    } ()
    
    let finalizarButton = UIButton(configuration: .filled())
    
    let componentesStackView = UIStackView ()
    let labelsStackView = UIStackView ()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = UIColor(named: "blueBackground")
        setupConclusaoViewHierarchy()
        setupConclusaoViewsAtributes()
        setupConclusaoConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
        
    }
    
    private func setupConclusaoViewHierarchy() {
        self.addSubview(componentesStackView)
        
        labelsStackView.addArrangedSubview(conclusaoTituloLabel)
        labelsStackView.addArrangedSubview(conclusaoMensagemLabel)
        
        componentesStackView.addArrangedSubview(parabensLabel)
        componentesStackView.addArrangedSubview(cenouraImage)
        componentesStackView.addArrangedSubview(labelsStackView)
        componentesStackView.addArrangedSubview(finalizarButton)
    }
    
    private func setupConclusaoViewsAtributes() {
        componentesStackView.axis = .vertical
        componentesStackView.distribution = .fill
        componentesStackView.spacing = 40
        
        cenouraImage.contentMode = .scaleAspectFit
        cenouraImage.image = UIImage(named: "cenourinhaComColher")
        
        parabensLabel.textAlignment = .center
        
        conclusaoTituloLabel.textAlignment = .center
        
        conclusaoMensagemLabel.textAlignment = .center
        conclusaoMensagemLabel.numberOfLines = 0
        
        labelsStackView.axis = .vertical
        labelsStackView.distribution = .fill
        
        finalizarButton.setTitle("Finalizar receita", for: .normal)
        finalizarButton.tintColor = UIColor(named: "azul-acao")
        
        //shadow do botao
        finalizarButton.layer.shadowOffset = CGSize(width: 0, height: 3)
        finalizarButton.layer.shadowRadius = 10
        finalizarButton.layer.shadowColor = UIColor.black.cgColor
        finalizarButton.layer.shadowOpacity = 0.25
        
    }
    
    private func setupConclusaoConstraints() {
        componentesStackView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            componentesStackView.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 40),
            componentesStackView.leadingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leadingAnchor,constant: 16),
            componentesStackView.trailingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.trailingAnchor,constant: -16),
            componentesStackView.bottomAnchor.constraint(equalTo: self.safeAreaLayoutGuide.bottomAnchor, constant: -8)
        ])
        
        parabensLabel.setContentHuggingPriority(.defaultHigh, for: .vertical)
        cenouraImage.setContentHuggingPriority(.defaultLow, for: .vertical)
        
        finalizarButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            finalizarButton.heightAnchor.constraint(equalToConstant: 56)
        ])
    }
    
}

// MARK: - Preview
#if DEBUG
import SwiftUI
@available(iOS 13, *)
struct ConclusaoView_Preview: PreviewProvider {
    static var previews: some View {
        // view controller using programmatic UI
        Group {
            ConclusaoView().showPreview().previewDevice("iPhone SE (3rd generation)")
            ConclusaoView().showPreview().previewDevice("iPhone SE (3rd generation)").previewInterfaceOrientation(.landscapeLeft)
        }
    }
}
#endif
