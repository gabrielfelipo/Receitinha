//
//  ReceitasViewController+DataSource.swift
//  Receitinha
//
//  Created by LoreVilaca on 14/09/22.
//

import Foundation
import UIKit

extension ReceitasViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = receitasView.receitasTableView.dequeueReusableCell(withIdentifier: ReceitasTableViewCell.recipeCellIdentifier, for: indexPath) as! ReceitasTableViewCell
        cell.backgroundColor = UIColor(named: "blueBackground")
        return cell
    }
    
}
