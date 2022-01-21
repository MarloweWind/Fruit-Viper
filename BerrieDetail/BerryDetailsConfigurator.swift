//
//  BerryDetailsConfigurator.swift
//  Fruit Viper
//
//  Created by Marlowe Wind on 20.01.2022.
//

import Foundation

class BerryDetailsConfigurator: BerryDetailsConfiguratorProtocol {
    
    func configure(with viewController: BerryDetailsViewController) {
        let presenter = BerryDetailsPresenter(view: viewController)
        let interactor = BerryDetailsInteractor(presenter: presenter)
        let router = BerryDetailsRouter(viewController: viewController)
        
        viewController.presenter = presenter
        presenter.interactor = interactor
        presenter.router = router
    }
    
}
