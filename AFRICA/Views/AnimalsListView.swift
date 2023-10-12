//
//  AnimalsListView.swift
//  AFRICA
//
//  Created by batraju.nagaraju on 12/10/23.
//

import SwiftUI

struct AnimalsListView: View {
    
    // MARK: - PROPERTIES
    var animal:animals
    // MARK: - BODY
    var body: some View {
        
        // Displaying image
        HStack(alignment:.center, spacing: 8.0) {
            Image(animal.image)
                .resizable()
                .scaledToFill()
                .frame(width: 80, height: 80)
                .clipShape(
                    RoundedRectangle(cornerRadius: 12)
                )
                .padding()
            // Displaying name and headline
            VStack(alignment: .leading, spacing: 8.0) {
                Text(animal.name)
                    .font(.title2)
                    .fontWeight(.heavy)
                    
                Text(animal.headline)
                    .font(.footnote)
                    .fontWeight(.light)
                    .multilineTextAlignment(.leading)
                    .lineLimit(2)
                    .padding(.trailing)
            }// End VStack
        } // End HStack
    }
}

// MARK: - PREVIEW
struct AnimalsListView_Previews: PreviewProvider {
    static var previews: some View {
        let animalsList:[animals] = Bundle.main.decode("animals.json")
        AnimalsListView(animal: animalsList[0])
            .previewLayout(.sizeThatFits)
    }
}
