//
//  Popular.swift
//  GBShop
//
//  Created by Михаил Киржнер on 01.07.2022.
//

import Foundation

struct Popular: Codable {
    let id: Int
    let productName: String
    let productPrice: Double
    let imageUrl: String
    
    enum CodingKeys: String, CodingKey {
        case id = "id_product"
        case productName = "product_name"
        case productPrice = "price"
        case imageUrl = "image_url"
    }
}
