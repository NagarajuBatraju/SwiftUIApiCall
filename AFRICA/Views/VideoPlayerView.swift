//
//  VideoPlayerView.swift
//  AFRICA
//
//  Created by batraju.nagaraju on 12/10/23.
//

import SwiftUI
import AVKit

struct VideoPlayerView: View {
    // MARK: - PROPERTIES
    var videoSelected:String
    var videoTitle:String
    // MARK: - BODY
    var body: some View {
       VideoPlayer(player: playVideo(fileName: videoSelected, fileFormat: "mp4"))
    }
}

// MARK: - PREVIEW
struct VideoPlayerView_Previews: PreviewProvider {
    static var previews: some View {
        VideoPlayerView(videoSelected: "lion", videoTitle: "Lion")
    }
}
