//
//  ReceitasView.swift
//  Receitinha
//
//  Created by LoreVilaca on 13/09/22.
//

import UIKit

class ReceitasView: UIView {
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
        fatalError("init(coder:) has not been implemented")
    }

    private func setupRecipeViewHierarchy () {
        receitasTableView.register (ReceitasTableViewCell.self, forCellReuseIdentifier: ReceitasTableViewCell.recipeCellIdentifier)
        self.addSubview(UIView(frame: .zero))
        self.addSubview(receitasTableView)
        
        
    }
    
    private func setupRecipeViewsAtributes() {
        self.backgroundColor = UIColor(named: "blueBackground")
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



// MARK: - Preview
#if DEBUG
import SwiftUI
@available(iOS 13, *)
struct ReceitasView_Preview: PreviewProvider {
    static var previews: some View {
        // view controller using programmatic UI
        Group {
            ReceitasViewController().showPreview().previewDevice("iPhone SE (3rd generation)")
            ReceitasViewController().showPreview().previewDevice("iPhone SE (3rd generation)").previewInterfaceOrientation(.landscapeLeft)
        }
    }
}
#endif
