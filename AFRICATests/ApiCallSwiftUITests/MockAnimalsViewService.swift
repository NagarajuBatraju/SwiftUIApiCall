//
//  MockCommentViewService.swift
//  ApiCallSwiftUITests
//
//  Created by batraju.nagaraju on 12/10/23.
//

import Foundation
@testable import ApiCallSwiftUI

class MockAnimalsViewService: animalsViewServiceDelegate {
    func getComments(completion: @escaping (Result<[animals], NetworkError>) -> Void) {
        
        guard let jsonData = readLocalJsonFile() else {
            completion(.failure(.NoData))
            return
        }
        do {
            let obj = try  JSONDecoder().decode([animals].self, from: jsonData)
            completion(.success(obj))
        } catch let error {
            print(error)
            completion(.failure(.DecodingError))
        }
    }
    
    private func readLocalJsonFile() -> Data? {
        do {
            guard let fileUrl =  Bundle.main.url(forResource: "animals", withExtension: "json") else {
                return nil
            }
            let data = try Data(contentsOf: fileUrl)
            return data
        } catch let error {
            print(error.localizedDescription)
            return nil
        }
    }
}
