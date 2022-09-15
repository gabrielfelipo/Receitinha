//
//  ConquistasCollectionViewCell.swift
//  Receitinha
//
//  Created by gabrielfelipo on 15/09/22.
//

import UIKit

class ConquistasCollectionViewCell: UICollectionViewCell {
    static let identifier = "conquistasCollectionViewCell"
    
    let nameLabel: UILabel = {
       let name = UILabel()
        name.text = "Bloqueada"
        
        return name
    }()
    
    let imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        
        return imageView
    }()
    
    let stackView = UIStackView()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        contentView.addSubview(stackView)
        
        stackView.axis = .vertical
        stackView.addArrangedSubview(imageView)
        stackView.addArrangedSubview(nameLabel)
        
        nameLabel.textAlignment = .center
        nameLabel.font = UIFont.boldSystemFont(ofSize: 12)
        nameLabel.textColor = UIColor(red: 0.46, green: 0.46, blue: 0.46, alpha: 1.00)
        
        let images = [
            UIImage(named: "misto_bloq"),
            UIImage(named: "misto_bloq"),
            UIImage(named: "misto_bloq"),
            UIImage(named: "misto_bloq"),
            UIImage(named: "misto_bloq"),
            UIImage(named: "misto_bloq")
        ].compactMap({$0})
        imageView.image = images[0]
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        stackView.frame = contentView.bounds
    }
    

}
