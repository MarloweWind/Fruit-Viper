//
//  BerryDetailsRouter.swift
//  Fruit Viper
//
//  Created by Marlowe Wind on 20.01.2022.
//

import Foundation

class BerryDetailsRouter: BerryDetailsRouterProtocol {
    
    weak var viewController: BerryDetailsViewController!

    init(viewController: BerryDetailsViewController) {
        self.viewController = viewController
    }
    
}
