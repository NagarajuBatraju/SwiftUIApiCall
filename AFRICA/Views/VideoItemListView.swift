//
//  VideoListView.swift
//  AFRICA
//
//  Created by batraju.nagaraju on 112/10/23.
//

import SwiftUI

struct VideoItemListView: View {
    // MARK: - PROPERTIES
    var videoItem: videoItem
    // MARK: - BODY
    var body: some View {
        HStack{
            ZStack{
                Image(videoItem.thumbnaill)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 80)
                    .cornerRadius(9)
                Image(systemName: "play.circle")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 32)
                    .shadow(radius: 4)
            } // End ZStack
            VStack(alignment: .leading, spacing: 8){
                Text(videoItem.name)
                    .font(.title2)
                    .fontWeight(.heavy)
                    .foregroundColor(.accentColor)
                Text(videoItem.headline)
                    .font(.footnote)
                    .fontWeight(.light)
                    .multilineTextAlignment(.leading)
                    .lineLimit(2)
            }
        }
    }
}

// MARK: - PREVIEW
struct VideoListView_Previews: PreviewProvider {
    static var previews: some View {
        let videoList:[videoItem] = Bundle.main.decode("videos.json")
        VideoItemListView(videoItem: videoList[0])
            .previewLayout(.sizeThatFits)
    }
}
