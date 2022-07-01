//
//  AbstractErrorParser.swift
//  GBShop
//
//  Created by Михаил Киржнер on 10.06.2022.
//

import Foundation

protocol AbstractErrorParser {
    func parse(_ result: Error) -> Error
    func parse(response: HTTPURLResponse?, data: Data?, error: Error?) -> Error?
}
