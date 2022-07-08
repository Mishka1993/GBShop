//
//  ReviewAddRequestFactory.swift
//  GBShop
//
//  Created by Михаил Киржнер on 07.07.2022.
//

import Alamofire
import Foundation

protocol ReviewAddRequestFactory {
    func add(userId: Int, text: String, completionHandler: @escaping (AFDataResponse<DefaultResponseResult>) -> Void)
}
