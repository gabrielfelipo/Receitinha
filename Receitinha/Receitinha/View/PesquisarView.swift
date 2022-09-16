//
//  PesquisarView.swift
//  Receitinha
//
//  Created by LoreVilaca on 13/09/22.
//

import UIKit

class PesquisarView: UIView {
    
    let receitasTableView: UITableView = {
        let table = UITableView ()
        table.separatorColor = .clear
        table.backgroundColor = UIColor(named: "blueBackground")
        table.translatesAutoresizingMaskIntoConstraints = false
        table.showsVerticalScrollIndicator = false
        return table
    } ()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupRecipeViewHierarchy()
        setupRecipeViewsAtributes()
        setupRecipeConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not implemented")
    }
    
    private func setupRecipeViewHierarchy () {
        receitasTableView.register (ReceitasTableViewCell.self, forCellReuseIdentifier: ReceitasTableViewCell.recipeCellIdentifier)
        self.addSubview(receitasTableView)
        
        
    }
    
    private func setupRecipeViewsAtributes() {
        //self.backgroundColor = UIColor(named: "blueBackground")
    }
    
    private func setupRecipeConstraints () {
        NSLayoutConstraint.activate([
            receitasTableView.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 16),
            receitasTableView.bottomAnchor.constraint(equalTo: self.bottomAnchor),
            receitasTableView.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            receitasTableView.leadingAnchor.constraint(equalTo: self.leadingAnchor)
            ])
        
    }
}
