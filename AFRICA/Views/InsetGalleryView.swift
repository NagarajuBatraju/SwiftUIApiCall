//
//  InsetGalleryView.swift
//  AFRICA
//
//  Created by batraju.nagaraju on 12/10/23.
//

import SwiftUI

struct InsetGalleryView: View {
    // MARK: - PROPERTIES
    let animal:animals
    
    // MARK: - BODY
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false){
            HStack(alignment: .center, spacing: 15) {
                ForEach(animal.gallery, id: \.self) { item in
                    Image(item)
                        .resizable()
                        .scaledToFit()
                        .frame(height: 200)
                    .cornerRadius(12)
                }
            } // End HStack
        }// End ScrollView
        
    }
}

// MARK: - PREVIEW
struct InsetGalleryView_Previews: PreviewProvider {
    static var previews: some View {
        let animalsList:[animals] = Bundle.main.decode("animals.json")
        InsetGalleryView(animal: animalsList[0])
            .previewLayout(.sizeThatFits)
    }
}
