//
//  CheckTableViewCell.swift
//  Receitinha
//
//  Created by rsbj on 14/09/22.
//

import UIKit

class CheckTableViewCell: UITableViewCell {
    
    static let indentifier:String = "CheckTableViewCell"
    
    let cellView: UIView = {
            let view = UIView()
            view.backgroundColor = UIColor.white
            view.layer.cornerRadius = 8
            view.translatesAutoresizingMaskIntoConstraints = false
            return view
        }()
    
    let dayLabel: UILabel = {
            let label = UILabel()
            label.text = "Day 1"
            label.textColor = .black
            label.font = UIFont.boldSystemFont(ofSize: 17)
            label.translatesAutoresizingMaskIntoConstraints = false
            return label
        }()
    
    let stack = UIStackView()
    
    let ajudaLabel: UILabel = {
            let label = UILabel()
            label.text = "Ajuda"
            label.textColor = .black
            label.font = UIFont.systemFont(ofSize: 12)
            label.translatesAutoresizingMaskIntoConstraints = false
            return label
        }()
    
    let ajudaSymbol: UIImageView = {
        let symbol = UIImage(named: "questionmark.circle")
        let imageView = UIImageView()
        imageView.image = symbol
        imageView.contentMode = .scaleAspectFit
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
            super.init(style: style, reuseIdentifier: reuseIdentifier)
            setupHierarquia()
            setupViewCell()
            setupStack()
        }
    
        required init?(coder aDecoder: NSCoder) {
            fatalError("init(coder:) has not been implemented")
        }
    
    private func setupHierarquia () {
        self.addSubview(cellView)
        cellView.addSubview(dayLabel)
        cellView.addSubview(stack)
        stack.addArrangedSubview(ajudaLabel)
        stack.addArrangedSubview(ajudaSymbol)
    }
    
    private func setupViewCell () {
        
        stack.translatesAutoresizingMaskIntoConstraints = false
        
        self.backgroundColor = UIColor(named: "blueBackground")
        
        NSLayoutConstraint.activate([
                cellView.topAnchor.constraint(equalTo: self.topAnchor, constant: 4),
                cellView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
                cellView.centerXAnchor.constraint(equalTo: self.centerXAnchor),
                cellView.bottomAnchor.constraint(equalTo: self.bottomAnchor,constant: -4)
            ])
        
        dayLabel.heightAnchor.constraint(equalToConstant: 56).isActive = true
        dayLabel.widthAnchor.constraint(equalToConstant: 200).isActive = true
        dayLabel.centerYAnchor.constraint(equalTo: cellView.centerYAnchor).isActive = true
        dayLabel.leftAnchor.constraint(equalTo: cellView.leftAnchor, constant: 20).isActive = true
    }
    
    private func setupStack () {
        
        NSLayoutConstraint.activate([
                stack.topAnchor.constraint(equalTo: self.topAnchor, constant: 4),
                stack.centerYAnchor.constraint(equalTo: self.centerYAnchor),
                stack.trailingAnchor.constraint(equalTo: self.trailingAnchor,constant: -16)
            ])
        stack.leftAnchor.constraint(equalTo: cellView.leftAnchor, constant: 100).isActive = true
        
        ajudaLabel.heightAnchor.constraint(equalToConstant: 56).isActive = true
        ajudaLabel.widthAnchor.constraint(equalToConstant: 100).isActive = true
        ajudaLabel.centerYAnchor.constraint(equalTo: cellView.centerYAnchor).isActive = true
        ajudaLabel.leftAnchor.constraint(equalTo: stack.leftAnchor, constant: 20).isActive = true
        
        ajudaSymbol.heightAnchor.constraint(equalToConstant: 50).isActive = true
        ajudaSymbol.widthAnchor.constraint(equalToConstant: 50).isActive = true
        ajudaSymbol.centerYAnchor.constraint(equalTo: cellView.centerYAnchor).isActive = true
        ajudaSymbol.leftAnchor.constraint(equalTo: stack.leftAnchor, constant: 20).isActive = true
    }
}

/*
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
*/








