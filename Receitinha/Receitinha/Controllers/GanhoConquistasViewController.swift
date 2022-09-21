//
//  GanhoConquistasViewController.swift
//  Receitinha
//
//  Created by lss8 on 17/09/22.
//

import UIKit

class GanhoConquistaViewController: UIViewController {
    
    let ganhoConquistaView = GanhoConquistaView()
    var indexReceita: Int?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view = ganhoConquistaView
        setupGanhoConquistaViewController()
        ganhoConquistaView.delegate = self
        
        // Do any additional setup after loading the view.
    }
    
    func setupGanhoConquistaViewController () {
        view.backgroundColor = UIColor(named: "blueBackground")
        //self.navigationController?.navigationBar.prefersLargeTitles = false
    }

}

extension GanhoConquistaViewController: ButtonDelegate{
    func sair() {
        
    }
    
    func continuar() {
        
    }
    
    func menu() {
        
    }
    
    func passarTela() {
        self.navigationController?.popToRootViewController(animated: true)
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
