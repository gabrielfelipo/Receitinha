//
//  ReceitasViewController.swift
//  Receitinha
//
//  Created by LoreVilaca on 12/09/22.
//

import UIKit

class ReceitasViewController: UIViewController {

    var isFirstTime: Bool? = true
    let receitasView = ReceitasView ()
    let receitas = Receita.receitas()
    
    override func viewDidLoad() {
        super.viewDidLoad()
                setupReceitasViewController()
        setupTableView()
        self.view = receitasView
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        tabBarController?.tabBar.isHidden = false
        self.navigationController?.navigationBar.prefersLargeTitles = true
        print("viewDIDAPPEAR")
        if isFirstTime!{
            print("first time load")
            //isFirstTime = false
        }else{
            print("second time load")
            self.tabBarController?.selectedIndex = 0
        }

    }
    
    func setupTableView() {
        receitasView.receitasTableView.delegate = self
        receitasView.receitasTableView.dataSource = self
    }
    
    
    func setupReceitasViewController () {
        self.navigationItem.title = "Escolher receita"
    }
    
    @objc func tableViewClicked(){
        print("clicou")
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
