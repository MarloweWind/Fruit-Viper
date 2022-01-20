//
//  MainBerriesProtocols.swift
//  Fruit Viper
//
//  Created by Marlowe Wind on 20.01.2022.
//

import Foundation
import UIKit

protocol MainBerriesViewProtocol: AnyObject {
    func UISetUp()
    func constrainsInit()
}

protocol MainBerriesPresenterProtocol: AnyObject {
    var router: MainBerriesRouterProtocol! { set get }
    func configureView()
}

protocol MainBerriesInteractorProtocol: AnyObject {
}

protocol MainBerriesConfiguratorProtocol: AnyObject {
    func configure(with viewController: MainBerriesViewController)
}

protocol MainBerriesRouterProtocol: AnyObject {
    func pushBerrieDetail(destinationViewController: UIViewController)
}
