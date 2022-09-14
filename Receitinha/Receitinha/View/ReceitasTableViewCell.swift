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
            view.translatesAutoresizingMaskIntoConstraints = false
            return view
        }()
    
    //let recipeImage
    
    let dayLabel: UILabel = {
            let label = UILabel()
            label.text = "Day 1"
            label.textColor = UIColor.white
            label.font = UIFont.boldSystemFont(ofSize: 16)
            label.translatesAutoresizingMaskIntoConstraints = false
            return label
    }()
    
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
            super.init(style: style, reuseIdentifier: reuseIdentifier)
            setupRecipeCellView()
        }
    
        required init?(coder aDecoder: NSCoder) {
            fatalError("init(coder:) has not been implemented")
        }
    
    func setupRecipeCellView () {
        
        self.addSubview(cellView)
        
        let backgroundView = UIView ()
        backgroundView.backgroundColor = UIColor(named: "blueBackground")
        self.selectedBackgroundView = backgroundView
        
        NSLayoutConstraint.activate([
                cellView.topAnchor.constraint(equalTo: self.topAnchor, constant: 8),
                cellView.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -24),
                cellView.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 24),
                cellView.bottomAnchor.constraint(equalTo: self.bottomAnchor,constant: -8)
            ])
    }

}
