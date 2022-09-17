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
        previaViewController.i = 0
        if previaViewController.i ?? 0 < indexPath.row {
            previaViewController.i = indexPath.row
        } else {}
        navigationController?.pushViewController(previaViewController, animated: true)
    }
}
