//
//  ReviewRemoveRequestFactory.swift
//  GBShop
//
//  Created by Михаил Киржнер on 07.07.2022.
//

import Alamofire
import Foundation

protocol ReviewRemoveRequestFactory {
    func remove(commentId: Int, completionHandler: @escaping (AFDataResponse<DefaultResponseResult>) -> Void)
}
