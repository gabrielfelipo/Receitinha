//
//  ConquistasViewController.swift
//  Receitinha
//
//  Created by LoreVilaca on 12/09/22.
//
import UIKit

class ConquistasViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {

    let conquistasView = ConquistasView()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        conquistasView.collectionView.dataSource = self
        conquistasView.collectionView.delegate = self
        setupConquistasViewController()
    }
    
    func setupConquistasViewController () {
        self.view = conquistasView
        self.navigationItem.title = "Conquistas"
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 6
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "conquistasCollectionViewCell", for: indexPath)
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.frame.size.width/3, height: view.frame.size.width/3)
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
