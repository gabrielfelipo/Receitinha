//
//  ComecoView.swift
//  Receitinha
//
//  Created by LoreVilaca on 16/09/22.
//

import UIKit

class ComecoView: UIView {

    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    let comecarLabel: UILabel = {
        let label = UILabel ()
        label.textColor = UIColor.black
        label.font = UIFont.boldSystemFont(ofSize: 28)
        label.text = "Vamos começar a preparação!"
        return label
    } ()
    
    let cenouraImage = UIImage ()
}
