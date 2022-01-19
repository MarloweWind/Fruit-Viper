//
//  ImageServies.swift
//  Fruit Viper
//
//  Created by Marlowe Wind on 11.01.2022.
//

import Foundation
import UIKit

class ImageServies {
    
    func getData(from url: URL, completion: @escaping (Data?, URLResponse?, Error?) -> ()) {
        URLSession.shared.dataTask(with: url, completionHandler: completion).resume()
    }
    
    func downloadImage(from url: URL, imageView: UIImageView) {
        print("Download started")
        getData(from: url) { data, response, error in
            guard let data = data, error == nil else { return }
//            print(response?.suggestedFilename ?? url.lastPathComponent)
            print("Download finished")
            DispatchQueue.main.async() {
                imageView.image = UIImage(data: data)
            }
        }
    }
    
}
