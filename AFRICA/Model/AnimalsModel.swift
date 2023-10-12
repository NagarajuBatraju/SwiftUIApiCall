//
//  AnimalsModel.swift
//  AFRICA
//
//  Created by batraju.nagaraju on 12/10/23.
//

import SwiftUI
import Alamofire

struct animals: Codable, Identifiable {
    var id: String
    var name: String
    var headline: String
    var description: String
    var link: String
    var image: String
    var gallery: [String]
    var fact: [String]
}



class animalListData: ObservableObject {
    
    @Published var animalData = [animals]()
    
    init() {
        AF.request("https://mocki.io/v1/b5c0065c-f2e2-4897-9a57-3771711aa2d2").response { (response) in
             self.animalData = try! JSONDecoder().decode([animals].self, from: response.data!)
            print(response.data!)
        }
      
        
    }
}
