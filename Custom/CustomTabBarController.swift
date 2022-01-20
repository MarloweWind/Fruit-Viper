//
//  CustomTabBarController.swift
//  Fruit Viper
//
//  Created by Marlowe Wind on 19.01.2022.
//

import UIKit

class CustomTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black
        UITabBar.appearance().barTintColor = .black
        tabBar.tintColor = .label
        tabBar.backgroundColor = .cyan
        setupViewControllers()
    }
    
    
    fileprivate func createNavController(for rootViewController: UIViewController,
                                                    title: String,
                                                    image: UIImage) -> UIViewController {
          let navController = UINavigationController(rootViewController: rootViewController)
          navController.tabBarItem.title = title
          navController.tabBarItem.image = image
          navController.navigationBar.prefersLargeTitles = true
          rootViewController.navigationItem.title = title
          return navController
      }
    
    func setupViewControllers() {
          viewControllers = [
              createNavController(for: MainFruitViewController(), title: NSLocalizedString("Fruits", comment: ""), image: UIImage(systemName: "applelogo")!),
              createNavController(for: MainBerriesViewController(), title: NSLocalizedString("Berries", comment: ""), image: UIImage(systemName: "circle.grid.cross")!),
          ]
      }

}
