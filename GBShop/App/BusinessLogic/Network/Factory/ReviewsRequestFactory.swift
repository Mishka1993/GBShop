//
//  ReviewsRequestFactory.swift
//  GBShop
//
//  Created by Михаил Киржнер on 07.07.2022.
//

import Alamofire
import Foundation

protocol ReviewsRequestFactory {
    func list(completionHandler: @escaping (AFDataResponse<Comments>) -> Void)
}
