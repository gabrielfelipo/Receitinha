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
        view.backgroundColor = UIColor(named: "blueBackground")
        // Do any additional setup after loading the view.
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
