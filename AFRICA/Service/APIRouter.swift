//
//  APIRouter.swift
//  ApiCallSwiftUI
//
//  Created by batraju.nagaraju on 12/10/23.
//

import Foundation
import Alamofire


public enum APIRouter: URLRequestConvertible {
    case getAnimals
    
    private var urlPath: String {
        switch self {
        case .getAnimals:
            return "https://mocki.io/v1/b5c0065c-f2e2-4897-9a57-3771711aa2d2"
        }
    }
    
    private var method: HTTPMethod {
        switch self {
        case .getAnimals:
            return .get
        }
    }
    
    
    public func asURLRequest() throws -> URLRequest {
        let url = try urlPath.asURL()
        var urlrequest = URLRequest(url: url)
        urlrequest.httpMethod = method.rawValue
        return urlrequest

    }
    
    
}
