//
//  Comment.swift
//  GBShop
//
//  Created by Михаил Киржнер on 08.07.2022.
//

import Foundation

struct Comment: Codable {
    let id = UUID()
    var userId: Int
    var text: String

    enum CodingKeys: String, CodingKey {
        case userId = "id_user"
        case text
    }
}
