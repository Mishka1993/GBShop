//
//  LogOutRequestFactory.swift
//  GBShop
//
//  Created by Михаил Киржнер on 10.06.2022.
//

import Alamofire
import Foundation

protocol LogOutRequestFactory {
    func logOut(userId: Int, completionHandler: @escaping (AFDataResponse<DefaultResponseResult>) -> Void)
}
