//
//  PopularRequestFactory.swift
//  GBShop
//
//  Created by Михаил Киржнер on 01.07.2022.
//

import Alamofire
import Foundation

protocol PopularRequestFactory {
    func getPopular(productId: Int, completionHandler: @escaping (AFDataResponse<Popular>) -> Void)
}
