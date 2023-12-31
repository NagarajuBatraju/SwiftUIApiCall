//
//  VideoView.swift
//  AFRICA
//
//  Created by batraju.nagaraju on 07/12/22.
//

import SwiftUI

struct VideoView: View {
    // MARK: - PROPERTIES
    var videoItemsList:[videoItem] = Bundle.main.decode("videos.json")
    // MARK: - BODY
    var body: some View {
        NavigationView{
            List{
                ForEach(videoItemsList) { item in
                    NavigationLink(destination: VideoPlayerView(videoSelected: item.id, videoTitle: item.name)){
                        VideoItemListView(videoItem: item)
                             .padding(.vertical, 12)
                    }// End Navigation Link
                   
                }// End ForEach
            }// End List
            .listStyle(InsetGroupedListStyle())
            .navigationBarTitle("video", displayMode: .inline)
            
        } // End NavigationView
        
    }
}

// MARK: - PREVIEW
struct VideoView_Previews: PreviewProvider {
    static var previews: some View {
        VideoView()
    }
}
