//
//  MainFruitViewController.swift
//  Fruit Viper
//
//  Created by Marlowe Wind on 10.01.2022.
//

import UIKit

class MainFruitViewController: UIViewController, MainFruitViewProtocol, UITableViewDelegate {
    
    
    var presenter: MainFruitPresenter!
    let configurator: MainFruitConfiguratorProtocol = MainFruitConfigurator()
    
    let tableView = UITableView()
    
    var fruit: [Fruit] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        configurator.configure(with: self)
        presenter.configureView()
        fruit = presenter.fruit
    }
    
    func UISetUp() {
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.register(MainFruitTableViewCell.self, forCellReuseIdentifier: "cell")
        tableView.rowHeight = 48
        tableView.delegate = self
        tableView.dataSource = self
        tableView.backgroundColor = .orange
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

extension MainFruitViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let fruitCell = fruit[indexPath.row]
        let destinationViewController = FruitDetailsViewController(fruitImage: fruitCell.fruitImageUrl)
        presenter.rowSelected(destinationViewController: destinationViewController)
    }
    

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        fruit.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? MainFruitTableViewCell else { return UITableViewCell() }

        let fruitCell = fruit[indexPath.row]
        cell.fruitNameLabel.text = fruitCell.fruitName

        return cell
    }

}

