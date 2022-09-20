//
//  CheckView.swift
//  Receitinha
//
//  Created by rsbj on 17/09/22.
//

import UIKit

class CheckView: UIView {
    
    weak var delegate: ButtonDelegate?
    
    let button: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("  Próximo passo ", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.tintColor = UIColor(named: "azul-acao")
        button.layer.cornerRadius = 25
        button.backgroundColor = UIColor(named: "azul-acao")
//        button.setImage(iconProximo, for: .normal)
        button.imageView?.contentMode = .scaleAspectFit
        button.semanticContentAttribute = UIApplication.shared
            .userInterfaceLayoutDirection == .rightToLeft ? .forceLeftToRight : .forceRightToLeft
        //shadow do botao
        button.layer.shadowOffset = CGSize(width: 0, height: 3)
        button.layer.shadowRadius = 10
        button.layer.shadowColor = UIColor.black.cgColor
        button.layer.shadowOpacity = 0.25
        return button
    }()
    
    let scrollView: UIScrollView = {
        var scroll = UIScrollView()
        scroll.showsVerticalScrollIndicator = false
//        scroll.contentSize = CGSize(width: UIScreen.main.bounds.width, height: 1110)
        return scroll
    }()
    
    
    let contentView = UIView()
    
    let titleLabelContainer = UIView()
    
    let titleLabel: UILabel = {
       let label = UILabel()
        label.text = "Muito Bem!"
        label.textAlignment = .center
        label.textColor = .black
        label.font = UIFont.boldSystemFont(ofSize: 28)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.numberOfLines = 0
        return label
    }()
    
    let cenouraImageContainer = UIView()
    
    let cenouraImage : UIImageView = {
        let image = UIImage(named: "cenourinhaCheck")
        let imageView = UIImageView()
        imageView.image = image
        imageView.contentMode = .scaleAspectFit
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    let subTitleLabelContainer = UIView()
    
    let subTitleLabel: UILabel = {
       let label = UILabel()
        label.numberOfLines = 0
        label.textAlignment = .center
        label.text = "Você finalizou os preparativos!"
        label.textColor = .black
        label.font = UIFont.boldSystemFont(ofSize: 22)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let descLabelContainer = UIView()
    
    let descLabel: UILabel = {
       let label = UILabel()
        label.text = "Agora confira se você tem todos os itens e ingredientes organizados."
        label.numberOfLines = 0
//        label.minimumScaleFactor = 18
        label.textColor = .black
        label.font = UIFont.systemFont(ofSize: 20)
        label.translatesAutoresizingMaskIntoConstraints = false
//        label.backgroundColor = .red
        return label
    }()
    
    let stackzona: UIStackView = {
        let stack = UIStackView()
        stack.axis = .vertical
        stack.alignment = .fill
  //      stack.distribution = .fillEqually
        stack.spacing = 24
        return stack
    }()
    
    
    lazy var tableView: UITableView = {
        let tableView = UITableView(frame: .zero, style: .plain)
        tableView.showsVerticalScrollIndicator = false
//        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.isScrollEnabled = true
        tableView.separatorColor = UIColor(named: "blueBackground")
//        tableView.backgroundView?.backgroundColor = .green
        tableView.register(CheckTableViewCell.self, forCellReuseIdentifier: CheckTableViewCell.indentifier)
        tableView.rowHeight = UITableView.automaticDimension
        tableView.estimatedRowHeight = 56
        return tableView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
            self.backgroundColor = UIColor(named: "blueBackground")
            setupHierarquia()
            setupConstraints()
            setupButton()
        }
    
        required init?(coder aDecoder: NSCoder) {
            fatalError("init(coder:) has not been implemented")
        }
    
    private func setupHierarquia(){

        self.addSubview(stackzona)
        self.addSubview(button)
        titleLabelContainer.addSubview(titleLabel)
        subTitleLabelContainer.addSubview(subTitleLabel)
        cenouraImageContainer.addSubview(cenouraImage)
        descLabelContainer.addSubview(descLabel)
        stackzona.addArrangedSubview(titleLabelContainer)
        stackzona.addArrangedSubview(cenouraImageContainer)
        stackzona.addArrangedSubview(subTitleLabelContainer)
        stackzona.addArrangedSubview(descLabelContainer)
        stackzona.addArrangedSubview(tableView)
    }
    
    private func setupConstraints(){
        stackzona.translatesAutoresizingMaskIntoConstraints = false
        titleLabelContainer.translatesAutoresizingMaskIntoConstraints = false
        cenouraImageContainer.translatesAutoresizingMaskIntoConstraints = false
        subTitleLabelContainer.translatesAutoresizingMaskIntoConstraints = false
        descLabel.translatesAutoresizingMaskIntoConstraints = false

        button.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            button.leadingAnchor.constraint(equalTo: self.leadingAnchor,constant: 16),
            button.heightAnchor.constraint(equalToConstant: 58),
            button.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            button.bottomAnchor.constraint(equalTo: self.safeAreaLayoutGuide.bottomAnchor,constant: -16)
        ])
        
        NSLayoutConstraint.activate([
            stackzona.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor,constant: 16),
            stackzona.leadingAnchor.constraint(equalTo: self.leadingAnchor,constant: 16),
            stackzona.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            stackzona.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            stackzona.bottomAnchor.constraint(equalTo: button.topAnchor,constant: -16)
        ])
        
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: titleLabelContainer.topAnchor),
            titleLabel.leadingAnchor.constraint(equalTo: titleLabelContainer.leadingAnchor),
            titleLabel.centerXAnchor.constraint(equalTo: titleLabelContainer.centerXAnchor),
            titleLabel.centerYAnchor.constraint(equalTo: titleLabelContainer.centerYAnchor)
        ])

        NSLayoutConstraint.activate([
            subTitleLabel.topAnchor.constraint(equalTo: subTitleLabelContainer.topAnchor),
            subTitleLabel.leadingAnchor.constraint(equalTo: subTitleLabelContainer.leadingAnchor),
            subTitleLabel.centerXAnchor.constraint(equalTo: subTitleLabelContainer.centerXAnchor),
            subTitleLabel.centerYAnchor.constraint(equalTo: subTitleLabelContainer.centerYAnchor)
        ])
        subTitleLabel.setContentHuggingPriority(.defaultLow, for: .vertical)
        subTitleLabelContainer.setContentHuggingPriority(.defaultLow, for: .vertical)


        NSLayoutConstraint.activate([
            cenouraImage.topAnchor.constraint(equalTo: cenouraImageContainer.topAnchor),
            cenouraImage.leadingAnchor.constraint(equalTo: cenouraImageContainer.leadingAnchor),
            cenouraImage.centerXAnchor.constraint(equalTo: cenouraImageContainer.centerXAnchor),
            cenouraImage.centerYAnchor.constraint(equalTo: cenouraImageContainer.centerYAnchor)
        ])
        cenouraImage.setContentHuggingPriority(.defaultLow, for: .vertical)
        cenouraImageContainer.setContentHuggingPriority(.defaultLow, for: .vertical)


        NSLayoutConstraint.activate([
            descLabel.topAnchor.constraint(equalTo: descLabelContainer.topAnchor),
            descLabel.leadingAnchor.constraint(equalTo: descLabelContainer.leadingAnchor),
            descLabel.centerXAnchor.constraint(equalTo: descLabelContainer.centerXAnchor),
            descLabel.centerYAnchor.constraint(equalTo: descLabelContainer.centerYAnchor)
        ])
        descLabel.setContentHuggingPriority(.defaultLow, for: .vertical)
        descLabelContainer.setContentHuggingPriority(.defaultLow, for: .vertical)


        
        tableView.setContentHuggingPriority(.defaultHigh, for: .vertical)
    }
    
    private func setupButton(){
        button.addTarget(self, action: #selector(tappedButton), for: .touchUpInside)
    }

    @objc func tappedButton(sender: UIButton) {
        delegate?.passarTela()
    }

}

// MARK: - Preview
#if DEBUG
import SwiftUI
@available(iOS 13, *)
struct CheckView_Preview: PreviewProvider {
    static var previews: some View {
        // view controller using programmatic UI
        Group {
            CheckView().showPreview().previewDevice("iPhone SE (3rd generation)")
            CheckView().showPreview().previewDevice("iPhone SE (3rd generation)").previewInterfaceOrientation(.landscapeLeft)
        }
    }
}
#endif
