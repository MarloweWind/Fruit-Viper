//
//  FruitDetailsPresenter.swift
//  Fruit Viper
//
//  Created by Marlowe Wind on 10.01.2022.
//

import Foundation
import UIKit

class FruitDetailsPresenter: FruitDetailsPresenterProtocol {
    
    weak var view: FruitDetailsViewProtocol!
    var interactor: FruitDetailsInteractorProtocol!
    var router: FruitDetailsRouterProtocol!
    
    required init(view: FruitDetailsViewProtocol) {
        self.view = view
    }
    
    func configureView() {
        view?.UISetUp()
        view?.constrainsInit()
    }
    
    func imageDonwloaded(url: URL, imageView: UIImageView) {
        interactor.downloadImage(url: url, imageView: imageView)
    }
    
}
