//
//  RegistrationRequestFactory.swift
//  GBShop
//
//  Created by Михаил Киржнер on 10.06.2022.
//

import Foundation
import Alamofire

protocol RegistrationRequestFactory {
    func register(user: RequestUserData, completionHandler: @escaping (AFDataResponse<RegistrationResult>) -> Void)
}
