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
        return table
    } ()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = UIColor(named: "blueBackground")
        setupRecipeViewHierarchy()
//      setupViewsAtributes()
        setupRecipeConstraints()
//        setupAdditionalConfiguration()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    private func setupRecipeViewHierarchy () {
        receitasTableView.register (ReceitasTableViewCell.self, forCellReuseIdentifier: "RecipeCellID")
        self.addSubview(receitasTableView)
        
        
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
            ConquistasViewController().showPreview().previewDevice("iPhone SE (3rd generation)")
            ConquistasViewController().showPreview().previewDevice("iPhone SE (3rd generation)").previewInterfaceOrientation(.landscapeLeft)
        }
    }
}
#endif
