//
//  ConquistasCollectionViewCell.swift
//  Receitinha
//
//  Created by gabrielfelipo on 15/09/22.
//

import UIKit

class ConquistasCollectionViewCell: UICollectionViewCell {
    static let identifier = "conquistasCollectionViewCell"
    
    //MARK: - Inicializando Componentes
    let nameLabel: UILabel = {
       let name = UILabel()
        name.text = "Bloqueada"
        
        return name
    }()
    
    let imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        
        return imageView
    }()
    
    let stackView = UIStackView()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupViewsHierarchy()
        setupViewsAttribute()
        setupViewsConstraints()
        
    }
    
    //MARK: - Organizando hierarquia das views
    func setupViewsHierarchy () {
        contentView.addSubview(stackView)
        
        stackView.addArrangedSubview(imageView)
        stackView.addArrangedSubview(nameLabel)
    }
    
    //MARK: - Setando atributos
    func setupViewsAttribute () {
        stackView.axis = .vertical
        stackView.spacing = 8
        
        nameLabel.textAlignment = .center
        nameLabel.font = UIFont.boldSystemFont(ofSize: 12)
        nameLabel.preferredMaxLayoutWidth = 15
        nameLabel.textColor = UIColor(red: 0.46, green: 0.46, blue: 0.46, alpha: 1.00)
        nameLabel.numberOfLines = 1
        nameLabel.adjustsFontSizeToFitWidth = true
        //nameLabel.lineBreakMode = .byWordWrapping
    }
    
    //MARK: - Setando constraints das views
    func setupViewsConstraints () {
        imageView.clipsToBounds = true
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        stackView.frame = contentView.bounds
    }
    
}
