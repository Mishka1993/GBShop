//
//  RegistrationResult.swift
//  GBShop
//
//  Created by Михаил Киржнер on 10.06.2022.
//

import Foundation

struct RegistrationResult: Codable {
    let result: Int
    let userMessage: String
    
    enum CodingKeys: String, CodingKey {
        case result
        case userMessage = "user_message"
    }
}
