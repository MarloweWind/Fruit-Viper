//
//  MainFruitRouter.swift
//  Fruit Viper
//
//  Created by Marlowe Wind on 10.01.2022.
//

import Foundation
import UIKit

class MainFruitRouter: MainFruitRouterProtocol {
    
    weak var viewController: MainFruitViewController!
    init(viewController: MainFruitViewController) {
        self.viewController = viewController
    }

    func pushFruitDetail(destinationViewController: UIViewController) {
        viewController.navigationController?.pushViewController(destinationViewController, animated: true)
    }
    
}
