//
//  RequestFactory.swift
//  GBShop
//
//  Created by Михаил Киржнер on 10.06.2022.
//

import Alamofire
import Foundation

class RequestFactory {
    func makeErrorParser() -> AbstractErrorParser {
        return ErrorParser()
    }
    
    lazy var commonSession: Session = {
        let configuration = URLSessionConfiguration.default
        configuration.httpShouldSetCookies = false
        configuration.headers = .default
        let manager = Session(configuration: configuration)
        return manager
    }()
    
    let sessionQueue = DispatchQueue.global(qos: .utility)
    
    func makeAuthRequestFatory() -> AuthRequestFactory {
        let errorParser = makeErrorParser()
        return Auth(errorParser: errorParser, sessionManager: commonSession, queue: sessionQueue)
    }
    
    func makeRegistrationRequestFactory() -> RegistrationRequestFactory {
        let errorParser = makeErrorParser()
        return Auth(errorParser: errorParser, sessionManager: commonSession, queue: sessionQueue)
    }
    
    func makeLogOutRequestFactory() -> LogOutRequestFactory {
        let errorParser = makeErrorParser()
        return Auth(errorParser: errorParser, sessionManager: commonSession, queue: sessionQueue)
    }
    
    func makeChangeUserDataFactory() -> ChangeUserDataRequestFactory {
        let errorParser = makeErrorParser()
        return Auth(errorParser: errorParser, sessionManager: commonSession, queue: sessionQueue)
    }
    
    func makeCatalogGoodDataFactory() -> CatalogRequestFactory {
        let errorParser = makeErrorParser()
        return Populars(errorParser: errorParser, sessionManager: commonSession, queue: sessionQueue)
    }
    
    func makeGoodRequestFactory() -> PopularRequestFactory {
        let errorParser = makeErrorParser()
        return Populars(errorParser: errorParser, sessionManager: commonSession, queue: sessionQueue)
    }
}
