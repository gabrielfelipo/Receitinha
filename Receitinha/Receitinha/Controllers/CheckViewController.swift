//
//  CheckViewController.swift
//  Receitinha
//
//  Created by rsbj on 14/09/22.
//

import UIKit

class CheckViewController: UIViewController {
    
    let checkView = CheckView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        checkView.tableView.delegate = self
        checkView.tableView.dataSource = self
        self.view = checkView
    }
}





// MARK: - Preview
#if DEBUG
import SwiftUI
@available(iOS 13, *)
struct CheckViewController_Preview: PreviewProvider {
    static var previews: some View {
        // view controller using programmatic UI
        Group {
            CheckViewController().showPreview().previewDevice("iPhone SE (3rd generation)")
            CheckViewController().showPreview().previewDevice("iPhone SE (3rd generation)").previewInterfaceOrientation(.landscapeLeft)
        }
    }
}
#endif

