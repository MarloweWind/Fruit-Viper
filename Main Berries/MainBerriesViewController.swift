//
//  MainBerriesViewController.swift
//  Fruit Viper
//
//  Created by Marlowe Wind on 19.01.2022.
//

import UIKit

class MainBerriesViewController: UIViewController, MainBerriesViewProtocol, UITableViewDelegate {

    var presenter: MainBerriesPresenter!
    let configurator: MainBerriesConfiguratorProtocol = MainBerriesConfigurator()
    
    let tableView = UITableView()
    
    var berry: [Berry] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configurator.configure(with: self)
        presenter.configureView()
        berry = presenter.berry
    }
    
    func UISetUp() {
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.register(MainBerriesTableViewCell.self, forCellReuseIdentifier: "cell")
        tableView.rowHeight = 48
        tableView.delegate = self
        tableView.dataSource = self
        tableView.backgroundColor = .purple
        view.addSubview(tableView)
    }
    
    func constrainsInit() {
        NSLayoutConstraint.activate([
            tableView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 0),
            tableView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: 0),
            tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0),
            tableView.topAnchor.constraint(equalTo: view.topAnchor, constant: 0)
            ])
    }
    
}

extension MainBerriesViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
//        let berryCell = berry[indexPath.row]
//        let destinationViewController = FruitDetailsViewController(fruitImage: fruitCell.fruitImageUrl)
//        presenter.rowSelected(destinationViewController: destinationViewController)
    }
    

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        berry.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? MainBerriesTableViewCell else { return UITableViewCell() }

        let berryCell = berry[indexPath.row]
        cell.berryNameLabel.text = berryCell.berryName

        return cell
    }
}
