//
//  MapView.swift
//  AFRICA
//
//  Created by batraju.nagaraju on 12/10/23.
//

import SwiftUI
import MapKit
struct MapView: View {
    // MARK: - PROPERTIES
    
    @State private var  region : MKCoordinateRegion = {
        var mkLocationregion = CLLocationCoordinate2D(latitude: 6.600286, longitude: 16.4377599)
        var mapZoomLevel = MKCoordinateSpan(latitudeDelta: 70.0, longitudeDelta: 70.0)
        var region = MKCoordinateRegion(center: mkLocationregion, span: mapZoomLevel)
        return region
    }()
    

    
    @ObservedObject var obs = locationListData()

    // MARK: - BODY
    var body: some View {
        Map(coordinateRegion: $region, annotationItems: obs.locationData) { item in
            // MapAnnotation Custom
//            MapAnnotation(coordinate:item.location){
//                Image("logo")
//                    .resizable()
//                    .scaledToFit()
//                    .frame(width: 32,height: 32)
//            }
            
          // MapAnnotation custom advance
            MapAnnotation(coordinate: item.location){
                MapAnnotationView(location: item)
            }
        }
    }
}

// MARK: - PREVIEW
struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
