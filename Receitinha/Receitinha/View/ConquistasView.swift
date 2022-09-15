//
//  ConquistasView.swift
//  Receitinha
//
//  Created by LoreVilaca on 13/09/22.
//

import UIKit

class ConquistasView: UIView, UICollectionViewDataSource, UICollectionViewDelegate {
    //MARK: - Inicialização dos componentes
    let trofeuImageView = UIImageView()
    let descricaoLabel = UILabel()
    var conquistasCollectionView: UICollectionView?
    
    let trofeuContainer = UIView()
    let descricaoContainer = UIView()
    let conquistasCollectionViewContainer = UIView()
    
    let conquistasStackView = UIStackView ()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.backgroundColor = UIColor(named: "blueBackground")
        
        let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        layout.sectionInset = UIEdgeInsets(top: 20, left: 10, bottom: 10, right: 10)
        layout.itemSize = CGSize(width: 60, height: 60)
        
        conquistasCollectionView = UICollectionView(frame: self.frame, collectionViewLayout: layout)
        conquistasCollectionView?.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "MyCell")
        conquistasCollectionView?.backgroundColor = UIColor.white
        
        conquistasCollectionView?.dataSource = self
        conquistasCollectionView?.delegate = self
        
        setupViewsHierarchy()
        setupViewsAttribute()
        setupConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not implemented")
    }
    
    func setupViewsHierarchy () {
        self.addSubview(conquistasStackView)
        
        trofeuContainer.addSubview(trofeuImageView)
        descricaoContainer.addSubview(descricaoLabel)
        conquistasCollectionViewContainer.addSubview(conquistasCollectionView ?? UICollectionView())
        
        conquistasStackView.addArrangedSubview(trofeuImageView)
        conquistasStackView.addArrangedSubview(descricaoContainer)
        conquistasStackView.addArrangedSubview(conquistasCollectionViewContainer)
    }
    
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
        
        trofeuContainer.backgroundColor = .red
        descricaoContainer.backgroundColor = .yellow
        conquistasCollectionViewContainer.backgroundColor = .purple
        //conquistasStackView.backgroundColor = .purple
    }
    
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
            trofeuImageView.centerXAnchor.constraint(equalTo: centerXAnchor)
        ])
        
        descricaoLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            descricaoLabel.topAnchor.constraint(equalTo: descricaoContainer.topAnchor),
            descricaoLabel.widthAnchor.constraint(equalTo: conquistasStackView.widthAnchor)
        ])
        
        descricaoContainer.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            //descricaoContainer.bottomAnchor.constraint(equalTo: descricaoLabel.bottomAnchor)
        ])
        
        conquistasCollectionViewContainer.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            conquistasCollectionViewContainer.heightAnchor.constraint(equalToConstant: 300)
        ])
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        9
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let myCell = collectionView.dequeueReusableCell(withReuseIdentifier: "MyCell", for: indexPath)
        myCell.backgroundColor = UIColor.blue
        return myCell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
           print("User tapped on item \(indexPath.row)")
    }
}
