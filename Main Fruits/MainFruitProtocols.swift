//
//  MainFruitProtocols.swift
//  Fruit Viper
//
//  Created by Marlowe Wind on 10.01.2022.
//

import Foundation
import UIKit

protocol MainFruitViewProtocol: AnyObject {
    func UISetUp()
    func constrainsInit()
}

protocol MainFruitPresenterProtocol: AnyObject {
    var router: MainFruitRouterProtocol! { set get }
    func configureView()
}

protocol MainFruitInteractorProtocol: AnyObject {
}

protocol MainFruitConfiguratorProtocol: AnyObject {
    func configure(with viewController: MainFruitViewController)
}

protocol MainFruitRouterProtocol: AnyObject {
    func pushFruitDetail(destinationViewController: UIViewController)
}
