//
//  PesquisarViewController.swift
//  Receitinha
//
//  Created by LoreVilaca on 12/09/22.
//

import UIKit

class PesquisarViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupPesquisarViewController()
        // Do any additional setup after loading the view.
    }
    
    func setupPesquisarViewController () {
        view.backgroundColor = UIColor(named: "blueBackground")
        self.navigationItem.title = "Buscar receita"
        navigationController?.navigationBar.prefersLargeTitles = true
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
struct PesquisarViewController_Preview: PreviewProvider {
    static var previews: some View {
        // view controller using programmatic UI
        Group {
            PesquisarViewController().showPreview().previewDevice("iPhone SE (3rd generation)")
            PesquisarViewController().showPreview().previewDevice("iPhone SE (3rd generation)").previewInterfaceOrientation(.landscapeLeft)
        }
    }
}
#endif