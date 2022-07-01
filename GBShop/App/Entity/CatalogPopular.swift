//
//  CatalogPopular.swift
//  GBShop
//
//  Created by Михаил Киржнер on 01.07.2022.
//

import Foundation

struct CatalogPopular: Codable {
    let id: Int
    let productName: String
    let productPrice: Double

    enum CodingKeys: String, CodingKey {
        case id = "id_product"
        case productName = "product_name"
        case productPrice = "price"
    }
}
