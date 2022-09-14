//
//  CheckViewController.swift
//  Receitinha
//
//  Created by rsbj on 14/09/22.
//

import UIKit

class CheckViewController: UIViewController {

/*//    lazy var collectionView:UICollectionView = {
//        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: UICollectionViewLayout.init())
//        collectionView.translatesAutoresizingMaskIntoConstraints = false
//        collectionView.backgroundColor = .red
//        collectionView.register(CheckCollectionViewController.self, forCellWithReuseIdentifier: "Cell")
//
//        let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout.init()
//        layout.scrollDirection = .vertical
//        collectionView.setCollectionViewLayout(layout, animated: false)
//
////        collectionView.delegate = self
////        collectionView.dataSource = self
//
//        return collectionView
//    }()*/
    
    lazy var tableView: UITableView = {
        let tableView = UITableView(frame: .zero, style: .plain)
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.isScrollEnabled = true
        tableView.separatorColor = UIColor(named: "blueBackground")
        tableView.register(CheckTableViewCell.self, forCellReuseIdentifier: CheckTableViewCell.indentifier)
        return tableView
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(named: "blueBackground")
        self.view.addSubview(self.tableView)
        self.configConstraints()
        self.tableView.delegate = self
        self.tableView.dataSource = self
        // Do any additional setup after loading the view.
    }
    
    private func configConstraints(){
        NSLayoutConstraint.activate([
            self.tableView.topAnchor.constraint(equalTo: self.view.topAnchor),
            self.tableView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor,constant: 16),
            self.tableView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            self.tableView.centerYAnchor.constraint(equalTo: self.view.centerYAnchor)
        
        ])
    }
}

extension CheckViewController:UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: CheckTableViewCell.indentifier, for: indexPath) as? CheckTableViewCell
        return cell ?? UITableViewCell()
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 56
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

