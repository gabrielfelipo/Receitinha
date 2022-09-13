//
//  ConquistasViewController.swift
//  Receitinha
//
//  Created by LoreVilaca on 12/09/22.
//

import UIKit

class ConquistasViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupConquistasViewController()
        // Do any additional setup after loading the view.
    }
    
    func setupConquistasViewController () {
        view.backgroundColor = UIColor(named: "blueBackground")
        self.navigationItem.title = "Conquistas"
    }
}


// MARK: - Preview
#if DEBUG
import SwiftUI
@available(iOS 13, *)
struct ConquistasViewController_Preview: PreviewProvider {
    static var previews: some View {
        // view controller using programmatic UI
        Group {
            ConquistasViewController().showPreview().previewDevice("iPhone SE (3rd generation)")
            ConquistasViewController().showPreview().previewDevice("iPhone SE (3rd generation)").previewInterfaceOrientation(.landscapeLeft)
        }
    }
}
#endif
