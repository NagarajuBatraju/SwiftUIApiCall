//
//  AnimalDetailsView.swift
//  AFRICA
//
//  Created by batraju.nagaraju on 12/10/23.
//

import SwiftUI

struct AnimalDetailsView: View {
    // MARK: - PROPERTIES
    let animal:animals
    // MARK: - BODY
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            
            VStack(alignment: .center, spacing: 20)  {
                // HERO IMAGE
                Image(animal.image)
                    .resizable()
                    .scaledToFit()
                // TITLE
                Text(animal.name.uppercased())
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .multilineTextAlignment(.center)
                    .padding(.vertical,8)
                    .foregroundColor(.primary)
                    .background(
                        Color.accentColor
                            .frame(height: 6)
                            .offset(y:24)
                    )
                // HeadLine
                Text(animal.headline)
                    .font(.headline)
                    .multilineTextAlignment(.leading)
                    .foregroundColor(.accentColor)
                    .padding(.horizontal)
                // GALLERY
                Group{
                    HeadingView(headingImage: "photo.on.rectangle.angled", headingText: "Wilderness in picture")
                    InsetGalleryView(animal: animal)
                }
                
            } // End VStack
            .navigationBarTitle("Learn about \(animal.name)", displayMode: .inline)
        } // End ScrollView
    }
}

// MARK: - PERVIEW
struct AnimalDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        let animalsList:[animals] = Bundle.main.decode("animals.json")
        AnimalDetailsView(animal: animalsList[0])
    }
}
