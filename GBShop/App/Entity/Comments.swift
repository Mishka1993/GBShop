//
//  Comments.swift
//  GBShop
//
//  Created by Михаил Киржнер on 08.07.2022.
//

import Foundation

struct Comments: Codable {
    let count: Int
    let offset: Int
    let items: [Comment]
}
