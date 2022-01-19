//
//  FruitDetailsViewController.swift
//  Fruit Viper
//
//  Created by Marlowe Wind on 10.01.2022.
//

import UIKit

class FruitDetailsViewController: UIViewController, FruitDetailsViewProtocol {
    
    var presenter: FruitDetailsPresenter!
    let configurator: FruitDetailsConfiguratorProtocol = FruitDetailsConfigurator()
    
    var fruitImage: String = ""
    var fruitImageView = UIImageView()
    
    init(fruitImage: String) {
        super.init(nibName: nil, bundle: nil)
        self.fruitImage = fruitImage
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .yellow
        configurator.configure(with: self)
        presenter.configureView()
        
        guard let url = URL(string: fruitImage) else { return }
        presenter.imageDonwloaded(url: url, imageView: fruitImageView)

    }
    
    
    func UISetUp() {
        fruitImageView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(fruitImageView)
    }
    
    func constrainsInit() {
        NSLayoutConstraint.activate([
            fruitImageView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 0),
            fruitImageView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: 0),
            fruitImageView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0),
            fruitImageView.topAnchor.constraint(equalTo: view.topAnchor, constant: 0)
            ])
    }
    
}
