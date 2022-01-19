//
//  FruitDetailsConfigurator.swift
//  Fruit Viper
//
//  Created by Marlowe Wind on 10.01.2022.
//

import Foundation

class FruitDetailsConfigurator: FruitDetailsConfiguratorProtocol {
    
    func configure(with viewController: FruitDetailsViewController) {
        let presenter = FruitDetailsPresenter(view: viewController)
        let interactor = FruitDetailsInteractor(presenter: presenter)
        let router = FruitDetailsRouter(viewController: viewController)
        
        viewController.presenter = presenter
        presenter.interactor = interactor
        presenter.router = router
    }
    
}
