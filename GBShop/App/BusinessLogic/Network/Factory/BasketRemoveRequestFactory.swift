//
//  BasketRemoveRequestFactory.swift
//  GBShop
//
//  Created by Михаил Киржнер on 15.07.2022.
//

import Alamofire
import Foundation

protocol BasketRemoveRequestFactory {
    func remove(productId: Int, completionHandler: @escaping (AFDataResponse<DefaultResponseResult>) -> Void)
}
