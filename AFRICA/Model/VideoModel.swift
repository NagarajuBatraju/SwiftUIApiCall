//
//  VideoModel.swift
//  AFRICA
//
//  Created by batraju.nagaraju on 12/10/23.
//

import Foundation
import Alamofire

struct videoItem : Codable, Identifiable {
    var id: String
    var name: String
    var headline: String
    
    var thumbnaill: String {
        return "video-\(id)"
    }
}

class videoListData: ObservableObject {
    
    @Published var videoData = [videoItem]()
    
    init() {
        AF.request("https://mocki.io/v1/f363cc5a-ada7-494b-86ea-757f4e3ce275").response { (response) in
             self.videoData = try! JSONDecoder().decode([videoItem].self, from: response.data!)
            print(response.data!)
        }
      
        
    }
}
