//
//  CheckViewController+Delegate.swift
//  Receitinha
//
//  Created by rsbj on 17/09/22.
//

import UIKit

extension CheckViewController:UITableViewDataSource{

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return objetosIngredientes!.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        CheckTableViewCell.checkIndex = "\((indexPath.row)+1)"
        let cell = tableView.dequeueReusableCell(withIdentifier: CheckTableViewCell.indentifier, for: indexPath) as? CheckTableViewCell
        cell?.utensilioLabel.text = objetosIngredientes![indexPath.row]
        return cell ?? UITableViewCell()
    }

}
