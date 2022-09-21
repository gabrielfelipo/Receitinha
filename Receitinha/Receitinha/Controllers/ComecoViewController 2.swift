//
//  ComecoViewController.swift
//  Receitinha
//
//  Created by LoreVilaca on 16/09/22.
//

import UIKit

class ComecoViewController: UIViewController {

    let comecoView = ComecoView ()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view = comecoView
        // Do any additional setup after loading the view.
        //self.navigationItem.setLeftBarButton(.none, animated: true)
    }
    

}
