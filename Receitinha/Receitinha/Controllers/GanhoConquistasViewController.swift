//
//  GanhoConquistasViewController.swift
//  Receitinha
//
//  Created by lss8 on 17/09/22.
//

import UIKit

class GanhoConquistaViewController: UIViewController {
    
    let ganhoConquistaView = GanhoConquistaView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view = ganhoConquistaView
        setupGanhoConquistaViewController()
        
        // Do any additional setup after loading the view.
    }
    
    func setupGanhoConquistaViewController () {
        view.backgroundColor = UIColor(named: "blueBackground")
        //self.navigationController?.navigationBar.prefersLargeTitles = false
    }

}


// MARK: - Preview
#if DEBUG
import SwiftUI
@available(iOS 13, *)
struct GanhoConquistaViewController_Preview: PreviewProvider {
    static var previews: some View {
        // view controller using programmatic UI
        Group {
            GanhoConquistaViewController().showPreview().previewDevice("iPhone 13")
            GanhoConquistaViewController().showPreview().previewDevice("iPhone 13").previewInterfaceOrientation(.landscapeLeft)
        }
    }
}
#endif
