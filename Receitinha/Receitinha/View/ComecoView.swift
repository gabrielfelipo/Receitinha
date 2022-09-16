//
//  ComecoView.swift
//  Receitinha
//
//  Created by LoreVilaca on 16/09/22.
//

import UIKit

class ComecoView: UIView {
    
    let comecarLabel: UILabel = {
        let label = UILabel ()
        label.textColor = UIColor.black
        label.font = UIFont.boldSystemFont(ofSize: 28)
        label.text = "Vamos começar a preparação!"
        return label
    } ()
    
    let cenouraImage = UIImageView ()
    
    let lavarMaosLabel: UILabel = {
        let label = UILabel ()
        label.textColor = UIColor.black
        label.font = UIFont.boldSystemFont(ofSize: 24)
        label.text = "Não esqueça de lavar as mãos antes de começar!"
        return label
    } ()
    
    let preparacaoLabel: UILabel = {
        let label = UILabel ()
        label.textColor = UIColor.black
        label.font = UIFont.systemFont(ofSize: 20)
        label.text = "A preparação é o momento de juntar os ingredientes. Vamos pegar tudo que essa receita vai precisar. "
        return label
    } ()
    
    
    let comecarButton = UIButton (configuration: .filled())
    
    let minorStack = UIStackView ()
    
    let componentesStack = UIStackView ()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupComecoViewHierarchy()
        setupComecoViewsAtributes()
        setupComecoConstraints()
        self.backgroundColor = UIColor(named: "blueBackground")
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupComecoViewHierarchy() {
        self.addSubview(componentesStack)
        
        componentesStack.addArrangedSubview(minorStack)
        componentesStack.addArrangedSubview(preparacaoLabel)
        componentesStack.addArrangedSubview(comecarButton)
        
        minorStack.addArrangedSubview(comecarLabel)
        minorStack.addArrangedSubview(cenouraImage)
        minorStack.addArrangedSubview(lavarMaosLabel)
        
    }

    private func setupComecoViewsAtributes () {
        minorStack.axis = .vertical
        //minorStack.spacing = 40
        
        componentesStack.axis = .vertical
        componentesStack.distribution = .fill
        //componentesStack.spacing = 40
        
        cenouraImage.contentMode = .scaleAspectFit
        cenouraImage.image = UIImage(named: "cenourinhaComColher")
        
        comecarButton.setTitle("Começar preparação", for: .normal)
        comecarButton.backgroundColor = UIColor(named: "azul-acao")
        comecarButton.layer.cornerRadius = 25
        
        lavarMaosLabel.numberOfLines = 0
        lavarMaosLabel.textAlignment = .center
        
        comecarLabel.numberOfLines = 0
        comecarLabel.textAlignment = .center
        
        preparacaoLabel.numberOfLines = 0
        preparacaoLabel.textAlignment = .center
        
        
        preparacaoLabel.backgroundColor = .systemPink
        comecarLabel.backgroundColor = .green
        //minorStack.backgroundColor = .blue
        cenouraImage.backgroundColor = .yellow
        lavarMaosLabel.backgroundColor = .purple
        componentesStack.backgroundColor = .brown
    }
    
    
    private func setupComecoConstraints () {
        componentesStack.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            componentesStack.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 40),
            componentesStack.bottomAnchor.constraint(equalTo: self.safeAreaLayoutGuide.bottomAnchor, constant: -8),
            componentesStack.leadingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leadingAnchor,constant: 16),
            componentesStack.trailingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.trailingAnchor,constant: -16)
        ])
        
        comecarButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            comecarButton.heightAnchor.constraint(equalToConstant: 56)
        ])
        
        cenouraImage.translatesAutoresizingMaskIntoConstraints = false
        cenouraImage.setContentHuggingPriority(.defaultLow, for: .vertical)
        
        preparacaoLabel.setContentHuggingPriority(.defaultHigh, for: .vertical)
        
        comecarLabel.setContentHuggingPriority(.defaultHigh, for: .vertical)
        
        lavarMaosLabel.setContentHuggingPriority(.defaultLow, for: .vertical)
    }
    
}

// MARK: - Preview
#if DEBUG
import SwiftUI
@available(iOS 13, *)
struct ComecoView_Preview: PreviewProvider {
    static var previews: some View {
        // view controller using programmatic UI
        Group {
            ComecoView().showPreview().previewDevice("iPhone SE (3rd generation)")
            ComecoView().showPreview().previewDevice("iPhone SE (3rd generation)").previewInterfaceOrientation(.landscapeLeft)
        }
    }
}
#endif



