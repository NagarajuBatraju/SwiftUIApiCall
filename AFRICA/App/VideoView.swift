//
//  VideoView.swift
//  AFRICA
//
//  Created by batraju.nagaraju on 13/10/23.
//

import SwiftUI

struct VideoView: View {
    // MARK: - PROPERTIES
    @ObservedObject var obs = videoListData()
    // MARK: - BODY
    var body: some View {
        NavigationView{
            List{
                ForEach(obs.videoData) { item in
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
