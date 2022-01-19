//
//  MainFruitInteractor.swift
//  Fruit Viper
//
//  Created by Marlowe Wind on 10.01.2022.
//

import Foundation

class MainFruitInteractor: MainFruitInteractorProtocol {
    
    weak var presenter: MainFruitPresenterProtocol!
    
    required init(presenter: MainFruitPresenterProtocol) {
        self.presenter = presenter
    }
    
}
