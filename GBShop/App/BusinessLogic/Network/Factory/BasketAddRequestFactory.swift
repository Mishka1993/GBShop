//
//  BasketAddRequestFactory.swift
//  GBShop
//
//  Created by Михаил Киржнер on 15.07.2022.
//

import Alamofire
import Foundation

protocol BasketAddRequestFactory {
    func add(productId: Int, quantity: Int, completionHandler: @escaping (AFDataResponse<DefaultResponseResult>) -> Void)
}
