//
//  CheckViewController+DataSource.swift
//  Receitinha
//
//  Created by rsbj on 17/09/22.
//

import UIKit

extension CheckViewController:UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 56
    }
}
