//
//  PreviaViewController.swift
//  Receitinha
//
//  Created by ditthales on 14/09/22.
//

import UIKit

class PreviaViewController: UIViewController {
    
    var i: Int?
    let previaView = PreviaView()
    let receitas = Receita.receitas()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view = previaView
        setupPreviaViewController()

        // Do any additional setup after loading the view.
    }
    
    func setupPreviaViewController () {
        view.backgroundColor = UIColor(named: "blueBackground")
        self.navigationItem.title = receitas[0].titulo
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

// MARK: - Preview
#if DEBUG
import SwiftUI

@available(iOS 13, *)
struct PreviaViewController_Preview: PreviewProvider {
    static var previews: some View {
        Group {
            PreviaViewController().showPreview().previewDevice("iPhone SE (3rd generation)")
            PreviaViewController().showPreview().previewDevice("iPhone SE (3rd generation)").previewInterfaceOrientation(.landscapeLeft)
        }
    }
}
#endif
