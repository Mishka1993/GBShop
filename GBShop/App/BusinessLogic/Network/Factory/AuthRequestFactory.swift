//
//  AuthRequestFactory.swift
//  GBShop
//
//  Created by Михаил Киржнер on 10.06.2022.
//

import Alamofire

protocol AuthRequestFactory {
    func login(userName: String, password: String, completionHandler: @escaping
    (AFDataResponse<LoginResult>) -> Void)
}
