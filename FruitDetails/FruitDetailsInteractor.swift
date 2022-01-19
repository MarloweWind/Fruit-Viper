//
//  FruitDetailsInteractor.swift
//  Fruit Viper
//
//  Created by Marlowe Wind on 10.01.2022.
//

import Foundation
import UIKit

class FruitDetailsInteractor: FruitDetailsInteractorProtocol {
    
    weak var presenter: FruitDetailsPresenterProtocol!
    let imageServies = ImageServies()
    
    required init(presenter: FruitDetailsPresenterProtocol) {
        self.presenter = presenter
    }
    
    func downloadImage(url: URL, imageView: UIImageView) {
        imageServies.downloadImage(from: url, imageView: imageView)
    }
    
}
