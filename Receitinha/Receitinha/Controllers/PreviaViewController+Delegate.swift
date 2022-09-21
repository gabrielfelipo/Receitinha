//
//  PreviaViewController+PreviaViewDelegate.swift
//  Receitinha
//
//  Created by ditthales on 19/09/22.
//

import Foundation
import UIKit

extension PreviaViewController: PreviaViewDelegate{
    func iniciarReceita() {
        let passoPassoViewController = PassoPassoViewController()
        passoPassoViewController.receitaIndex = i
        
        self.navigationController?.pushViewController(passoPassoViewController, animated: true)
    }
    
    
}
