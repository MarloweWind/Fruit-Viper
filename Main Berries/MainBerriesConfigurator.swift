//
//  MainBerriesConfigurator.swift
//  Fruit Viper
//
//  Created by Marlowe Wind on 20.01.2022.
//

import Foundation

class MainBerriesConfigurator: MainBerriesConfiguratorProtocol {
    
    func configure(with viewController: MainBerriesViewController) {
        let presenter = MainBerriesPresenter(view: viewController)
        let interactor = MainBerriesInteractor(presenter: presenter)
        let router = MainBerriesRouter(viewController: viewController)
        
        viewController.presenter = presenter
        presenter.interactor = interactor
        presenter.router = router
    }
    
}
