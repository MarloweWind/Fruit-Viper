//
//  MainBerriesPresenter.swift
//  Fruit Viper
//
//  Created by Marlowe Wind on 20.01.2022.
//

import Foundation
import UIKit

class MainBerriesPresenter: MainBerriesPresenterProtocol {
    
    weak var view: MainBerriesViewProtocol!
    var interactor: MainBerriesInteractorProtocol!
    var router: MainBerriesRouterProtocol!
    
    var berry = [
        Berry(berryName: "Blackberry", berryImageUrl: "https://sun9-80.userapi.com/impg/ZIoJjZfISPnFFkQXx80zPGpiGAwFZVIk9Ur11w/9s4uFORSap8.jpg?size=1543x2160&quality=96&sign=d830f79b88f0f3df1339b5916a602b7a&type=album"),
        Berry(berryName: "Strawberry", berryImageUrl: "https://sun9-7.userapi.com/impg/NR5vjtl6wQiHykYUW5EvIU7oI-VwZCfTn2XgNg/JAztt9D5fsA.jpg?size=1280x1500&quality=96&sign=de279853bf5bad2dfaf00965f241fe41&type=album"),
        Berry(berryName: "Blueberry", berryImageUrl: "https://sun9-82.userapi.com/impg/pNDqnIsEW-soMmdlghjm698S3RNng4FbeGLbNQ/q6-Ux7J75xs.jpg?size=887x813&quality=96&sign=afedd81b2a762e56d973c63c6fe3b0d3&type=album"),
        Berry(berryName: "Raspberry", berryImageUrl: "https://sun9-2.userapi.com/impg/hxP1UW_F7MFJLJZMDYzt8cWxYxflnx1N723QAw/3VwHGrNyaAM.jpg?size=2560x1619&quality=96&sign=8678501f1fb92ee7c496cc953d0718f1&type=album")
    ]
    
    required init(view: MainBerriesViewProtocol) {
        self.view = view
    }
    
    func configureView() {
        view?.UISetUp()
        view?.constrainsInit()
    }
    
    func rowSelected(destinationViewController: UIViewController) {
        router.pushBerrieDetail(destinationViewController: destinationViewController)
    }
}
