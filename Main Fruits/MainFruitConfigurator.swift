//
//  MainFruitConfigurator.swift
//  Fruit Viper
//
//  Created by Marlowe Wind on 10.01.2022.
//

import Foundation

class MainFruitConfigurator: MainFruitConfiguratorProtocol {
    
    func configure(with viewController: MainFruitViewController) {
        let presenter = MainFruitPresenter(view: viewController)
        let interactor = MainFruitInteractor(presenter: presenter)
        let router = MainFruitRouter(viewController: viewController)
        
        viewController.presenter = presenter
        presenter.interactor = interactor
        presenter.router = router
    }
    
}
