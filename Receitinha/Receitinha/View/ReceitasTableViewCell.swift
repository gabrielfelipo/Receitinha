//
//  ReceitasTableViewCell.swift
//  Receitinha
//
//  Created by LoreVilaca on 14/09/22.
//

import UIKit

class ReceitasTableViewCell: UITableViewCell {
    
    static let recipeCellIdentifier = "RecipeCellID"
    
    let cellView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor.white
        view.layer.cornerRadius = 8
        return view
    }()
    
    let imageRecipe = UIImageView ()
    
    let nameRecipe: UILabel = {
        let label = UILabel()
        label.textColor = UIColor.black
        label.font = UIFont.boldSystemFont(ofSize: 22)
        label.numberOfLines = 0
        return label
    }()
    
    let durationRecipe: UILabel = {
        let durationLabel = UILabel()
        durationLabel.textColor = UIColor (red: 75/255, green: 75/255, blue: 75/255, alpha: 1.0)
        durationLabel.font = UIFont.boldSystemFont(ofSize: 15)
        return durationLabel
    }()
    
    let dificultyRecipe: UILabel = {
        let dificultyLabel = UILabel ()
        dificultyLabel.textColor = UIColor (red: 75/255, green: 75/255, blue: 75/255, alpha: 1.0)
        dificultyLabel.font = UIFont.boldSystemFont(ofSize: 15)
        return dificultyLabel
    } ()
    
    let minorLabelStackView = UIStackView ()
    let labelsStackView = UIStackView ()
    let dificultyStackView = UIStackView ()
    
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupRecipeCellViewHierarchy()
        setupRecipeCellViewAtributes()
        setupRecipeCellConstraints()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
    private func setupRecipeCellViewHierarchy () {
        self.addSubview(cellView)
        
        self.dificultyStackView.addArrangedSubview(dificultyRecipe)
        
        self.minorLabelStackView.addArrangedSubview(durationRecipe)
        self.minorLabelStackView.addArrangedSubview(dificultyStackView)
        
        self.labelsStackView.addArrangedSubview(nameRecipe)
        self.labelsStackView.addArrangedSubview(minorLabelStackView)
        
        self.cellView.addSubview(imageRecipe)
        self.cellView.addSubview(labelsStackView)
    }
    
    
    
    private func setupRecipeCellViewAtributes(){
        self.selectionStyle = .none
        
        imageRecipe.image = UIImage (named: "IMG_BananaComNescau_8")
        imageRecipe.layer.cornerRadius = 16
        imageRecipe.clipsToBounds = true
        imageRecipe.contentMode = .scaleAspectFill
        
        nameRecipe.text = "<nameLabel>"
        nameRecipe.numberOfLines = 0
        
        durationRecipe.text = "<durationLabel>"
        
        dificultyRecipe.text = "<dificultyLabel>"
        
        minorLabelStackView.axis = .vertical
        minorLabelStackView.alignment = .top
        minorLabelStackView.spacing = 0
        
        labelsStackView.axis = .vertical
        labelsStackView.alignment = .top
        labelsStackView.spacing = 8
     
        dificultyStackView.axis = .horizontal
        dificultyStackView.alignment = .top
        
        setupCellShadow()
    }
    
    private func setupRecipeCellConstraints() {
        cellView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            cellView.topAnchor.constraint(equalTo: self.topAnchor, constant: 8),
            cellView.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -24),
            cellView.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 24),
            cellView.bottomAnchor.constraint(equalTo: self.bottomAnchor,constant: -8)
        ])
        
        imageRecipe.setContentHuggingPriority(.defaultHigh, for: .horizontal)
        imageRecipe.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            imageRecipe.topAnchor.constraint(equalTo: self.cellView.topAnchor, constant: 8),
            imageRecipe.bottomAnchor.constraint(equalTo: self.cellView.bottomAnchor, constant: -8),
            imageRecipe.leadingAnchor.constraint(equalTo: self.cellView.leadingAnchor, constant: 8),
            imageRecipe.trailingAnchor.constraint(equalTo: self.labelsStackView.leadingAnchor, constant: -8),
            imageRecipe.heightAnchor.constraint(equalTo: imageRecipe.widthAnchor, multiplier: 0.72)
        ])
        
        labelsStackView.setContentHuggingPriority(.defaultLow, for: .horizontal)
        labelsStackView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            labelsStackView.topAnchor.constraint(equalTo: self.cellView.topAnchor, constant: 8),
            labelsStackView.bottomAnchor.constraint(equalTo: self.cellView.bottomAnchor, constant: -8),
            labelsStackView.trailingAnchor.constraint(equalTo: self.cellView.trailingAnchor, constant: -8)
        ])
    }
    
    private func setupCellShadow () {
        cellView.layer.shadowOffset = CGSize(width: 0, height: 1)
        cellView.layer.shadowRadius = 2
        cellView.layer.shadowColor = UIColor.black.cgColor
        cellView.layer.shadowOpacity = 0.2
    }
    
}
