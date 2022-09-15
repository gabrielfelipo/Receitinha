//
//  ConclusaoViewController.swift
//  Receitinha
//
//  Created by LoreVilaca on 15/09/22.
//

import UIKit

class ConclusaoViewController: UIViewController {

    let conclusaoView = ConclusaoView ()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view = conclusaoView
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
