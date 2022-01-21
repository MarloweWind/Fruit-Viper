//
//  BerryDetailsInteractor.swift
//  Fruit Viper
//
//  Created by Marlowe Wind on 20.01.2022.
//

import Foundation
import UIKit

class BerryDetailsInteractor: BerryDetailsInteractorProtocol {
    
    weak var presenter: BerryDetailsPresenterProtocol!
    let imageServies = ImageServies()
    
    required init(presenter: BerryDetailsPresenterProtocol) {
        self.presenter = presenter
    }
    
    func downloadImage(url: URL, imageView: UIImageView) {
        imageServies.downloadImage(from: url, imageView: imageView)
    }
    
}
