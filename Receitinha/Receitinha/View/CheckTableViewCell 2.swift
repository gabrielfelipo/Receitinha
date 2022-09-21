//
//  CheckTableViewCell.swift
//  Receitinha
//
//  Created by rsbj on 14/09/22.
//

import UIKit

class CheckTableViewCell: UITableViewCell {
    
    static let indentifier:String = "CheckTableViewCell"
    
    static var checkIndex:String = "0"
    
    let cellView: UIView = { // OK
            let view = UIView()
            view.backgroundColor = UIColor.white
            view.layer.cornerRadius = 8
            view.translatesAutoresizingMaskIntoConstraints = false
            return view
        }()
    
    let utensilioLabel: UILabel = { // OK
            let label = UILabel()
            label.text = "Utensilio 1"
            label.textColor = .black
            label.font = UIFont.boldSystemFont(ofSize: 17)
            label.translatesAutoresizingMaskIntoConstraints = false
            return label
        }()
    
    let stack = UIStackView()
    
    let ajudaLabelContainer = UIView()
    
    let ajudaLabel: UILabel = {
            let label = UILabel()
            label.text = "Ajuda"
            label.textAlignment = .right
            label.textColor = .black
            label.font = UIFont.systemFont(ofSize: 12)
            label.translatesAutoresizingMaskIntoConstraints = false
            return label
        }()
    
    let ajudaSymbolContainer = UIView()
    
    let ajudaSymbol: UIImageView = {
        let symbol = UIImage(systemName: "questionmark.circle")
        let imageView = UIImageView()
        imageView.image = symbol
        imageView.contentMode = .scaleToFill
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
        contentView.addSubview(cellView)
        cellView.addSubview(utensilioLabel)
        cellView.addSubview(stack)
        ajudaLabelContainer.addSubview(ajudaLabel)
        ajudaSymbolContainer.addSubview(ajudaSymbol)
        stack.addArrangedSubview(ajudaLabelContainer)
        stack.addArrangedSubview(ajudaSymbolContainer)
    }
    
    private func setupViewCell () {
        
        self.selectionStyle = .none
        
        self.backgroundColor = UIColor(named: "blueBackground")
        
        
        NSLayoutConstraint.activate([
                cellView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 4),
                cellView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
                cellView.centerXAnchor.constraint(equalTo: contentView.centerXAnchor),
                cellView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor,constant: -4),
                cellView.heightAnchor.constraint(equalToConstant: 56)
            ])
        
        utensilioLabel.heightAnchor.constraint(equalToConstant: 56).isActive = true
        utensilioLabel.widthAnchor.constraint(equalToConstant: 200).isActive = true
        utensilioLabel.centerYAnchor.constraint(equalTo: cellView.centerYAnchor).isActive = true
        utensilioLabel.leftAnchor.constraint(equalTo: cellView.leftAnchor, constant: 20).isActive = true
    }
    
    private func setupStack () {
        
        stack.axis = .horizontal
        stack.alignment = .fill
  //      stack.distribution = .fillEqually
        stack.spacing = 8
        
        stack.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
                stack.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 4),
                stack.centerYAnchor.constraint(equalTo: contentView.centerYAnchor),
                stack.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -16)
            ])
        stack.leadingAnchor.constraint(equalTo: cellView.trailingAnchor, constant: -150).isActive = true
        
        NSLayoutConstraint.activate([
                ajudaLabel.centerXAnchor.constraint(equalTo: ajudaLabelContainer.centerXAnchor),
                ajudaLabel.centerYAnchor.constraint(equalTo: ajudaLabelContainer.centerYAnchor),
                ajudaLabel.trailingAnchor.constraint(equalTo: ajudaLabelContainer.trailingAnchor),
                ajudaLabel.topAnchor.constraint(equalTo: ajudaLabelContainer.topAnchor)
            ])
        
        NSLayoutConstraint.activate([
                ajudaSymbol.centerXAnchor.constraint(equalTo: ajudaSymbolContainer.centerXAnchor),
                ajudaSymbol.centerYAnchor.constraint(equalTo: ajudaSymbolContainer.centerYAnchor),
                ajudaSymbol.trailingAnchor.constraint(equalTo: ajudaSymbolContainer.trailingAnchor),
            ])
        
        
        ajudaSymbol.heightAnchor.constraint(equalToConstant: 24).isActive = true
        ajudaSymbol.widthAnchor.constraint(equalToConstant: 24).isActive = true
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








// MARK: - Preview
#if DEBUG
import SwiftUI
@available(iOS 13, *)
struct CheckViewControllerCell_Preview: PreviewProvider {
    static var previews: some View {
        // view controller using programmatic UI
        Group {
            CheckTableViewCell().showPreview().previewLayout(PreviewLayout.fixed(width: 367, height: 56))
        }
    }
}
#endif
