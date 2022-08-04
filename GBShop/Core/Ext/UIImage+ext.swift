//
//  UIImage+ext.swift
//  GBShop
//
//  Created by Михаил Киржнер on 02.08.2022.
//


import UIKit

extension UIImageView {
    static var cacheImages = [String: UIImage]()
    
    func lazyLoadingImage(link: String, contentMode: UIView.ContentMode) {
        if UIImageView.cacheImages[link] != nil {
            image = UIImageView.cacheImages[link]
            return
        }
        
        URLSession.shared.dataTask(with: NSURL(string: link)! as URL, completionHandler: {
            data, _, _ -> Void in
            DispatchQueue.main.async {
                self.contentMode = contentMode
                if let data = data {
                    self.image = UIImage(data: data)
                    UIImageView.cacheImages[link] = self.image
                }
            }
        }).resume()
    }
}
