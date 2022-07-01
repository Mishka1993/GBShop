//
//  Popular.swift
//  GBShop
//
//  Created by Михаил Киржнер on 01.07.2022.
//

import Foundation

struct Popular: Codable {
    let id = UUID()
    let result: Int
    let productName: String
    let productPrice: Double
    let productDescription: String

    enum CodingKeys: String, CodingKey {
        case result
        case productName = "product_name"
        case productPrice = "product_price"
        case productDescription = "product_description"
    }
}
