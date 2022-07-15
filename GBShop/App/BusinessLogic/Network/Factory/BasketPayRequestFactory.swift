//
//  BasketPayRequestFactory.swift
//  GBShop
//
//  Created by Михаил Киржнер on 15.07.2022.
//

import Alamofire
import Foundation

protocol BasketPayRequestFactory {
    func pay(completionHandler: @escaping (AFDataResponse<DefaultResponseResult>) -> Void)
}
