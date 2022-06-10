//
//  ChangeUserDataRequestFactory.swift
//  GBShop
//
//  Created by Михаил Киржнер on 10.06.2022.
//

import Alamofire
import Foundation

protocol ChangeUserDataRequestFactory {
    func change(user: RequestUserData, completionHandler: @escaping (AFDataResponse<DefaultResponseResult>) -> Void)
}
