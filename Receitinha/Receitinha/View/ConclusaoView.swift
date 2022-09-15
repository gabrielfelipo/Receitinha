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
    
    let cenouraImage = UIImage ()
    
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
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = UIColor(named: "blueBackground")
        setupConclusaoViewHierarchy()
        setupConclusaoViewsAtributes()
        setupConclusaoConstraints()
//        setupAdditionalConfiguration()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    private func setupConclusaoViewHierarchy() {
        self.
    }
    
    private func setupConclusaoViewsAtributes() {
        
    }
    
    private func setupConclusaoConstraints() {
        
    }
    
}
