//
//  ConquistasViewController.swift
//  Receitinha
//
//  Created by LoreVilaca on 12/09/22.
//

import UIKit

class ConquistasViewController: UIViewController {
    
    var conquistasCollectionView: UICollectionView!
    let conquistasView = ConquistasView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupConquistasViewController()
    }
    
    func setupConquistasViewController () {
        self.view = conquistasView
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
