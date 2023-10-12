//
//  ContentView.swift
//  AFRICA
//
//  Created by batraju.nagaraju on 12/10/23.
//

import SwiftUI

struct ContentView: View {
    
    // MARK: - PROPERTIES
    
    @ObservedObject var obs = animalListData()
//    var animalsList: [animals] = Bundle.main.decode("animals.json")
    // MARK: - BODY
    var body: some View {
        NavigationView{
            List{
                CoverImagesView()
                    .frame(height: 300)
                    .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                
                ForEach(obs.animalData) { list in
                    NavigationLink(destination: AnimalDetailsView(animal: list)){
                        AnimalsListView(animal: list)
                    } // End Navigation link
                    
                }
            }// End List View
            .navigationBarTitle("Africa", displayMode: .large)
        } // End NavigationView
    }
}

// MARK: - PREVIEW
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            
    }
}
