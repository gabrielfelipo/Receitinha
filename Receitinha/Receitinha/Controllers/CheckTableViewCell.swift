//
//  CheckTableViewCell.swift
//  Receitinha
//
//  Created by rsbj on 14/09/22.
//

import UIKit

class CheckTableViewCell: UITableViewCell {
    
    static let indentifier:String = "CheckTableViewCell"
    
    let teste: UIView = {
        let view = UIView()
        view.backgroundColor = .red
        return view
    }()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
