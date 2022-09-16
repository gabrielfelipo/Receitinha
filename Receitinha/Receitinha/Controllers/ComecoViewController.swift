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
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
