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
}
