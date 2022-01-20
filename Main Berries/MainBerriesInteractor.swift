//
//  MainBerriesInteractor.swift
//  Fruit Viper
//
//  Created by Marlowe Wind on 20.01.2022.
//

import Foundation

class MainBerriesInteractor: MainBerriesInteractorProtocol {
    
    weak var presenter: MainBerriesPresenterProtocol!
    
    required init(presenter: MainBerriesPresenterProtocol) {
        self.presenter = presenter
    }
    
}
