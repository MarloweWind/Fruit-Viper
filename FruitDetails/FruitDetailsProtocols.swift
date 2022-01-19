//
//  FruitDetailsProtocols.swift
//  Fruit Viper
//
//  Created by Marlowe Wind on 10.01.2022.
//

import Foundation
import UIKit

protocol FruitDetailsViewProtocol: AnyObject {
    func UISetUp()
    func constrainsInit()
}

protocol FruitDetailsPresenterProtocol: AnyObject {
    var router: FruitDetailsRouterProtocol! { set get }
    func configureView()
}

protocol FruitDetailsInteractorProtocol: AnyObject {
    func downloadImage(url: URL, imageView: UIImageView)
}

protocol FruitDetailsConfiguratorProtocol: AnyObject {
    func configure(with viewController: FruitDetailsViewController)
}

protocol FruitDetailsRouterProtocol: AnyObject {
}
