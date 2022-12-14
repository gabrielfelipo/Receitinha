//
//  ConquistasViewController.swift
//  Receitinha
//
//  Created by LoreVilaca on 12/09/22.
//
import UIKit

class ConquistasViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    var conquistasDesbloqueadas: [Bool] = []
    
    let conquistasView = ConquistasView()
    
    var conquistas: [Conquista] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        conquistasView.collectionView.dataSource = self
        conquistasView.collectionView.delegate = self
        setupConquistasViewController()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        conquistasDesbloqueadas = Conquista.desbloqueadas
        conquistas = Conquista.conquistas()
        conquistasView.collectionView.reloadData()
    }
    
    func setupConquistasViewController () {
        self.view = conquistasView
        self.navigationItem.title = "Conquistas"
    }
    
//MARK: - Funções da collection view
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        let numeroConquistas = conquistas.count
        return numeroConquistas
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = conquistasView.collectionView.dequeueReusableCell(withReuseIdentifier: "conquistasCollectionViewCell", for: indexPath) as! ConquistasCollectionViewCell
        
        let item = conquistas[indexPath.row]
        if conquistasDesbloqueadas[indexPath.row] == true {
            cell.imageView.image = UIImage(named: item.imagem[1])
            cell.nameLabel.text = item.nome[1]
            cell.nameLabel.textColor = UIColor(red: 0.87, green: 0.55, blue: 0.22, alpha: 1.00)
        }
        else {
            cell.nameLabel.textColor = .systemGray
            cell.imageView.image = UIImage(named: item.imagem[0])
            cell.nameLabel.text = item.nome[0]
        }
        
        return cell
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
