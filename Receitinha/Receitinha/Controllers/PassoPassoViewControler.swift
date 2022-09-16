//
//  PassoPassoViewControler.swift
//  Receitinha
//
//  Created by lss8 on 14/09/22.
//

import UIKit

class PassoPassoViewController: UIViewController {
    
    let passoPassoView = PassoPassoView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view = passoPassoView
        setupPassoPassoViewController()
        
        // Do any additional setup after loading the view.
    }
    
    func setupPassoPassoViewController () {
        view.backgroundColor = UIColor(named: "blueBackground")
        self.navigationController?.navigationBar.prefersLargeTitles = false
    }

}


// MARK: - Preview
#if DEBUG
import SwiftUI
@available(iOS 13, *)
struct PassoPassoViewController_Preview: PreviewProvider {
    static var previews: some View {
        // view controller using programmatic UI
        Group {
            PassoPassoViewController().showPreview().previewDevice("iPhone 13")
            PassoPassoViewController().showPreview().previewDevice("iPhone 13").previewInterfaceOrientation(.landscapeLeft)
        }
    }
}
#endif

