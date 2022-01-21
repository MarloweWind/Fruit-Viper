//
//  BerryDetailsPresenter.swift
//  Fruit Viper
//
//  Created by Marlowe Wind on 20.01.2022.
//

import Foundation
import UIKit

class BerryDetailsPresenter: BerryDetailsPresenterProtocol {
    
    weak var view: BerryDetailsViewProtocol!
    var interactor: BerryDetailsInteractorProtocol!
    var router: BerryDetailsRouterProtocol!
    
    required init(view: BerryDetailsViewProtocol) {
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
