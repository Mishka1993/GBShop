//
//  CatalogRequestFactory.swift
//  GBShop
//
//  Created by Михаил Киржнер on 01.07.2022.
//

import Alamofire
import Foundation

protocol CatalogRequestFactory {
    func getCatalog(pageNumber: Int, categoryId: Int, completionHandler: @escaping (AFDataResponse<[CatalogPopular]>) -> Void)
}
