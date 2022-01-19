//
//  MainFruitPresenter.swift
//  Fruit Viper
//
//  Created by Marlowe Wind on 10.01.2022.
//

import Foundation
import UIKit

class MainFruitPresenter: MainFruitPresenterProtocol {
    
    weak var view: MainFruitViewProtocol!
    var interactor: MainFruitInteractorProtocol!
    var router: MainFruitRouterProtocol!
    
    var fruit = [
                Fruit(fruitName: "Orange", fruitImageUrl: "https://sun9-46.userapi.com/impg/eAZ1j5n1vlS_Tlgtkr2uG9qoauxsoq3Cm_NGBg/N0Tl2X0loP4.jpg?size=1024x768&quality=96&sign=5982497a1c70c78a78240340cd93889d&type=album"),
                Fruit(fruitName: "Banana", fruitImageUrl: "https://sun9-36.userapi.com/impg/BKZzq6CgVFiMGmCu7NCAzIeX1NSUEtV41f3tSg/5Z3FkTqGasU.jpg?size=1020x765&quality=96&sign=deda9577cf9b01833b954edb3d5064a1&type=album"),
                Fruit(fruitName: "Watermelon", fruitImageUrl: "https://sun9-70.userapi.com/impg/udj0_x8lh3S0VCdLYJhRM5AJZbfEoStALFq_KA/W4ten6xgP-o.jpg?size=700x469&quality=96&sign=f871092c16c4fe95795f224f8e08dfbe&type=album"),
                Fruit(fruitName: "Apple", fruitImageUrl: "https://sun9-11.userapi.com/impg/HTQTYglVOSauBXcYirF3YWGbyF7iQ5cBEVN0Og/dOxVMZJtTnA.jpg?size=960x936&quality=96&sign=495bffefa275dbdb8db7e52405cdacc9&type=album")]
    
    required init(view: MainFruitViewProtocol) {
        self.view = view
    }
    
    func configureView() {
        view?.UISetUp()
        view?.constrainsInit()
    }
    
    func rowSelected(destinationViewController: UIViewController) {
        router.pushFruitDetail(destinationViewController: destinationViewController)
    }
    
    
}

//class MainFruitPresenter: MainFruitPresenterProtocol {
//
//    weak var view: MainFruitViewProtocol!
//    var interactor: MainFruitInteractorProtocol!
//    var router: MainFruitRouterProtocol!
//
//    var fruit = [
//                Fruit(fruitName: "Orange", fruitImageUrl: "https://sun9-46.userapi.com/impg/eAZ1j5n1vlS_Tlgtkr2uG9qoauxsoq3Cm_NGBg/N0Tl2X0loP4.jpg?size=1024x768&quality=96&sign=5982497a1c70c78a78240340cd93889d&type=album"),
//                Fruit(fruitName: "Banana", fruitImageUrl: "https://sun9-36.userapi.com/impg/BKZzq6CgVFiMGmCu7NCAzIeX1NSUEtV41f3tSg/5Z3FkTqGasU.jpg?size=1020x765&quality=96&sign=deda9577cf9b01833b954edb3d5064a1&type=album"),
//                Fruit(fruitName: "Watermelon", fruitImageUrl: "https://sun9-70.userapi.com/impg/udj0_x8lh3S0VCdLYJhRM5AJZbfEoStALFq_KA/W4ten6xgP-o.jpg?size=700x469&quality=96&sign=f871092c16c4fe95795f224f8e08dfbe&type=album"),
//                Fruit(fruitName: "Apple", fruitImageUrl: "https://sun9-11.userapi.com/impg/HTQTYglVOSauBXcYirF3YWGbyF7iQ5cBEVN0Og/dOxVMZJtTnA.jpg?size=960x936&quality=96&sign=495bffefa275dbdb8db7e52405cdacc9&type=album")]
//
//    required init(view: MainFruitViewProtocol) {
//        self.view = view
//    }
//
//    func configureView() {
//        view?.UISetUp()
//        view?.constrainsInit()
//    }
//
//    func rowSelected(destinationViewController: UIViewController) {
//        router.pushFruitDetail(destinationViewController: destinationViewController)
//    }
//
//
//}
