//
//  MainFruitTableViewCell.swift
//  Fruit Viper
//
//  Created by Marlowe Wind on 12.01.2022.
//

import UIKit

class MainFruitTableViewCell: UITableViewCell {
    
    let fruitNameLabel = UILabel()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        UISetUp()
        constrainsInit()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    func UISetUp() {
        contentView.backgroundColor = .orange
        fruitNameLabel.translatesAutoresizingMaskIntoConstraints = false
        fruitNameLabel.font = UIFont(name: "HelveticaNeue", size: 17)
        fruitNameLabel.textColor = .black
        fruitNameLabel.adjustsFontSizeToFitWidth = true
        contentView.addSubview(fruitNameLabel)
    }
    
    func constrainsInit() {
        NSLayoutConstraint.activate([
            fruitNameLabel.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            fruitNameLabel.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 50),
            fruitNameLabel.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: 4),
            ])
    }

}
