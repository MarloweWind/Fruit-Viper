//
//  BerryDetailsProtocols.swift
//  Fruit Viper
//
//  Created by Marlowe Wind on 20.01.2022.
//

import Foundation
import UIKit

protocol BerryDetailsViewProtocol: AnyObject {
    func UISetUp()
    func constrainsInit()
}

protocol BerryDetailsPresenterProtocol: AnyObject {
    var router: BerryDetailsRouterProtocol! { set get }
    func configureView()
}

protocol BerryDetailsInteractorProtocol: AnyObject {
    func downloadImage(url: URL, imageView: UIImageView)
}

protocol BerryDetailsConfiguratorProtocol: AnyObject {
    func configure(with viewController: BerryDetailsViewController)
}

protocol BerryDetailsRouterProtocol: AnyObject {
}
