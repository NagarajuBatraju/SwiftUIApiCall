//
//  CoverImageExtension.swift
//  AFRICA
//
//  Created by batraju.nagaraju on 12/10/23.
//

import Foundation
import SwiftUI

extension Bundle {
    func decode<T: Codable>(_ file: String) -> T {
        
        // Json file location
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("issue in the file location")
        }
        
        // create a property for data
        guard let data = try? Data(contentsOf: url) else {
            fatalError("url is failed")
        }
        
        // create a decoder
        let decoder = JSONDecoder()
        
        // create a property for decoder data
        guard let images = try? decoder.decode(T.self, from: data) else {
            fatalError("failed in the json decoder")
        }
        
        
        // return conver images
        return images
    }
}
