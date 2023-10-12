//
//  LocationsModel.swift
//  AFRICA
//
//  Created by batraju.nagaraju on 12/10/23.
//

import Foundation
import MapKit
import Alamofire

struct locations: Codable, Identifiable {
    var id:String
    var name:String
    var image:String
    var latitude:Double
    var longitude: Double
  
    var location: CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
    }
    
}

class locationListData: ObservableObject {
    
    @Published var locationData = [locations]()
    
    init() {
        AF.request("https://mocki.io/v1/d756899d-26c1-4d49-a603-6d4f13d1a22c").response { (response) in
             self.locationData = try! JSONDecoder().decode([locations].self, from: response.data!)
            print(response.data!)
        }
      
        
    }
}
