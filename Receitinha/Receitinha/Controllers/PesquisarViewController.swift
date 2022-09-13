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
    }
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
