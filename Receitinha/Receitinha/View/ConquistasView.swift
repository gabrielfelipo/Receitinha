//
//  ConquistasView.swift
//  Receitinha
//
//  Created by LoreVilaca on 13/09/22.
//
import UIKit
import SwiftUI

class ConquistasView: UIView {
    
    //MARK: - Inicialização dos componentes
    
    let trofeuImageView = UIImageView()
    let descricaoLabel = UILabel()
    
    let trofeuContainer = UIView()
    let descricaoContainer = UIView()
    let conquistasCollectionViewContainer = UIView()
    
    let collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()

        layout.sectionInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
        layout.scrollDirection = .vertical
        layout.minimumLineSpacing = 24
        
        let widthScreen = UIScreen.main.bounds.width - 64
        let cellWidth = widthScreen / 3 - 2*8
        layout.itemSize = CGSize(width: cellWidth, height: cellWidth+23)
        
        let collection = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collection.register(ConquistasCollectionViewCell.self, forCellWithReuseIdentifier: "conquistasCollectionViewCell")
        collection.showsHorizontalScrollIndicator = false
        collection.isUserInteractionEnabled = false
        collection.backgroundColor = UIColor(named: "blueBackground")
        return collection
    }()
    
    let conquistasStackView = UIStackView ()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.backgroundColor = UIColor(named: "blueBackground")
        
        setupViewsHierarchy()
        setupViewsAttribute()
        setupConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not implemented")
    }
    
    //MARK: - Organizando Hierarquia
    
    func setupViewsHierarchy () {
        self.addSubview(conquistasStackView)
        
        trofeuContainer.addSubview(trofeuImageView)
        descricaoContainer.addSubview(descricaoLabel)
        conquistasCollectionViewContainer.addSubview(collectionView)
        
        conquistasStackView.addArrangedSubview(trofeuImageView)
        conquistasStackView.addArrangedSubview(descricaoContainer)
        conquistasStackView.addArrangedSubview(conquistasCollectionViewContainer)
    }
    
    
    //MARK: - Setando atributos
    
    private func setupViewsAttribute () {
        trofeuImageView.image = UIImage(named: "trofeu")
        trofeuImageView.contentMode = .scaleAspectFit
        
        descricaoLabel.text = "Cozinhe novas receitas para ganhar conquistas!"
        descricaoLabel.font = UIFont.boldSystemFont(ofSize: 17)
        descricaoLabel.textColor = UIColor(red: 0.19, green: 0.19, blue: 0.19, alpha: 1.00)
        descricaoLabel.textAlignment = .center
        descricaoLabel.numberOfLines = 0
        
        conquistasStackView.axis = .vertical
        conquistasStackView.alignment = .fill
        conquistasStackView.distribution = .fillProportionally
        conquistasStackView.spacing = 32
        
        //descricaoContainer.backgroundColor = .yellow
        //conquistasCollectionViewContainer.backgroundColor = .purple
        //conquistasStackView.backgroundColor = .purple
    }
    
    
    //MARK: - Setando constraints das views
    
    private func setupConstraints() {
        conquistasStackView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            conquistasStackView.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 32),
            conquistasStackView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 24),
            conquistasStackView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -24),
            //conquistasStackView.bottomAnchor.constraint(equalTo: self.safeAreaLayoutGuide.bottomAnchor)
        ])
        
        trofeuImageView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            trofeuImageView.centerXAnchor.constraint(equalTo: centerXAnchor),
            trofeuImageView.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 0.12)
        ])
        
        descricaoLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            descricaoLabel.topAnchor.constraint(equalTo: descricaoContainer.topAnchor),
            descricaoLabel.widthAnchor.constraint(equalTo: conquistasStackView.widthAnchor)
        ])
        
        descricaoContainer.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            descricaoContainer.heightAnchor.constraint(equalToConstant: 52)
        ])
        
        conquistasCollectionViewContainer.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            conquistasCollectionViewContainer.heightAnchor.constraint(equalToConstant: 300)
        ])
        
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            collectionView.leadingAnchor.constraint(equalTo: conquistasCollectionViewContainer.leadingAnchor, constant: 8),
            collectionView.trailingAnchor.constraint(equalTo: conquistasCollectionViewContainer.trailingAnchor, constant: -8),
            collectionView.topAnchor.constraint(equalTo: conquistasCollectionViewContainer.topAnchor),
            collectionView.bottomAnchor.constraint(equalTo: conquistasCollectionViewContainer.bottomAnchor)
        ])
    }
}
