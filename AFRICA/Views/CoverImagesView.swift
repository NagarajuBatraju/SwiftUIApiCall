//
//  CoverImagesView.swift
//  AFRICA
//
//  Created by batraju.nagaraju on 12/10/23.
//

import SwiftUI

struct CoverImagesView: View {
    // MARK :- PROPERTIES
    var coverImages: [coverImages] = Bundle.main.decode("covers.json")
    
    // MARK :- BODY
    var body: some View {
      
        TabView {
            ForEach(coverImages) { item in
                Image(item.name)
                    .resizable()
                    .scaledToFill()
            }// End Loop
            
        } // End Tabview
        .tabViewStyle(PageTabViewStyle())
       
    }
}

// MARK :- PREVIEW

struct CoverImagesView_Previews: PreviewProvider {
    static var previews: some View {
        CoverImagesView()
            .previewLayout(.fixed(width: 400, height: 300))
    }
}
