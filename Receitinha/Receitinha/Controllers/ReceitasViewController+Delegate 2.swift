//
//  ReceitasViewController+Delegate.swift
//  Receitinha
//
//  Created by LoreVilaca on 14/09/22.
//

import Foundation
import UIKit

extension ReceitasViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 128
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let previaViewController = PreviaViewController()
        previaViewController.indexReceita = 0
        if previaViewController.indexReceita ?? 0 < indexPath.row {
            previaViewController.indexReceita = indexPath.row
        } else {}
        
        let backItem = UIBarButtonItem()
        backItem.title = "Voltar para receitas"
        navigationItem.backBarButtonItem = backItem
        navigationController?.pushViewController(previaViewController, animated: true)
    }
}
