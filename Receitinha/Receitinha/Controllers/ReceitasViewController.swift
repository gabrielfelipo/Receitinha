//
//  ReceitasViewController.swift
//  Receitinha
//
//  Created by LoreVilaca on 12/09/22.
//

import UIKit

class ReceitasViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupReceitasViewController()
        // Do any additional setup after loading the view.
    }
    
    func setupReceitasViewController () {
        view.backgroundColor = UIColor(named: "blueBackground")
        self.navigationItem.title = "Escolher receita"
    }

}


// MARK: - Preview
#if DEBUG
import SwiftUI
@available(iOS 13, *)
struct ReceitasViewController_Preview: PreviewProvider {
    static var previews: some View {
        // view controller using programmatic UI
        Group {
            ReceitasViewController().showPreview().previewDevice("iPhone SE (3rd generation)")
            ReceitasViewController().showPreview().previewDevice("iPhone SE (3rd generation)").previewInterfaceOrientation(.landscapeLeft)
        }
    }
}
#endif
