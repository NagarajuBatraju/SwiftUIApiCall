//
//  CommentViewService.swift
//  ApiCallSwiftUI
//
//  Created by Nilesh on 04/01/22.
//

import Foundation



protocol animalsViewServiceDelegate {
    func getAnimals(completion: @escaping(Result<[animals], NetworkError>) -> Void)
}

class animalsViewService: animalsViewServiceDelegate  {
    
    func getAnimals(completion: @escaping(Result<[animals], NetworkError>) -> Void) {
        RestAPIClient.getComments(completion: completion)
    }
    
    
}
