//
//  MainBerriesRouter.swift
//  Fruit Viper
//
//  Created by Marlowe Wind on 20.01.2022.
//

import Foundation
import UIKit

class MainBerriesRouter: MainBerriesRouterProtocol {
    
    weak var viewController: MainBerriesViewController!

    init(viewController: MainBerriesViewController) {
        self.viewController = viewController
    }

    func pushBerrieDetail(destinationViewController: UIViewController) {
        viewController.navigationController?.pushViewController(destinationViewController, animated: true)
    }
}
