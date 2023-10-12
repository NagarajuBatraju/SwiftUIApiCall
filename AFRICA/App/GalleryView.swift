//
//  GalleryView.swift
//  AFRICA
//
//  Created by batraju.nagaraju on 13/10/23.
//

import SwiftUI

struct GalleryView: View {
    // MARK: - PROPERTIES
    var animalsList:[animals] = Bundle.main.decode("animals.json")
    @State var selectedImage:String = "lion"
    // MARK: - BODY
    var body: some View {
        ScrollView(.vertical, showsIndicators: false){
            
            VStack(alignment: .center, spacing: 10) {
                Image(selectedImage)
                    .resizable()
                    .scaledToFit()
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.red, lineWidth: 2))
                // GridView
                LazyVGrid(columns: Array(repeating: GridItem(.flexible()), count: 3), alignment: .center,spacing: 10) {
                          ForEach(animalsList) { item in
                              Image(item.image)
                                  .resizable()
                                  .scaledToFit()
                                  .clipShape(Circle())
                                .overlay(Circle().stroke(Color.accentColor, lineWidth: 2))
                                .onTapGesture {
                                    self.selectedImage = item.image
                                }
                          }
                }// End LazyVGrid
            } // End VStack
        }// End ScrollView
    }
}

// MARK: - PREVIEW
struct GalleryView_Previews: PreviewProvider {
    static var previews: some View {
        GalleryView()
    }
}
