//
//  FruitDetailsRouter.swift
//  Fruit Viper
//
//  Created by Marlowe Wind on 10.01.2022.
//

import Foundation

class FruitDetailsRouter: FruitDetailsRouterProtocol {
    
    weak var viewController: FruitDetailsViewController!

    init(viewController: FruitDetailsViewController) {
        self.viewController = viewController
    }
    
}
