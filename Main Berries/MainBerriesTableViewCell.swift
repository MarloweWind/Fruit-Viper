//
//  MainBerriesTableViewCell.swift
//  Fruit Viper
//
//  Created by Marlowe Wind on 20.01.2022.
//

import UIKit

class MainBerriesTableViewCell: UITableViewCell {

    let berryNameLabel = UILabel()
    
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
        contentView.backgroundColor = .purple
        berryNameLabel.translatesAutoresizingMaskIntoConstraints = false
        berryNameLabel.font = UIFont(name: "HelveticaNeue", size: 17)
        berryNameLabel.textColor = .black
        berryNameLabel.adjustsFontSizeToFitWidth = true
        contentView.addSubview(berryNameLabel)
    }
    
    func constrainsInit() {
        NSLayoutConstraint.activate([
            berryNameLabel.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            berryNameLabel.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 50),
            berryNameLabel.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: 4),
            ])
    }


}
