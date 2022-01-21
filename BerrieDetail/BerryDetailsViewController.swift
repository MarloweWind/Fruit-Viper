//
//  BerryDetailsViewController.swift
//  Fruit Viper
//
//  Created by Marlowe Wind on 20.01.2022.
//

import UIKit

class BerryDetailsViewController: UIViewController, BerryDetailsViewProtocol {

    var presenter: BerryDetailsPresenter!
    let configurator: BerryDetailsConfiguratorProtocol = BerryDetailsConfigurator()
    
    var berryImage: String = ""
    var berryImageView = UIImageView()
    
    init(berryImage: String) {
        super.init(nibName: nil, bundle: nil)
        self.berryImage = berryImage
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .yellow
        configurator.configure(with: self)
        presenter.configureView()
        
        guard let url = URL(string: berryImage) else { return }
        presenter.imageDonwloaded(url: url, imageView: berryImageView)

    }
    
    
    func UISetUp() {
        berryImageView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(berryImageView)
    }
    
    func constrainsInit() {
        NSLayoutConstraint.activate([
            berryImageView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 0),
            berryImageView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: 0),
            berryImageView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0),
            berryImageView.topAnchor.constraint(equalTo: view.topAnchor, constant: 0)
            ])
    }
    

}
