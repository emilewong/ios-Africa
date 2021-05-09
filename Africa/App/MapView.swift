//
//  MapView.swift
//  Africa
//
//  Created by Emile Wong on 24/4/2021.
//

import SwiftUI
import MapKit

struct MapView: View {
    // MARK: PROPERTIES
    @State private  var region: MKCoordinateRegion = {
        var mapCoordinates = CLLocationCoordinate2D(latitude: 6.600286, longitude: 16.4377599)
        var mapZoomLevel = MKCoordinateSpan(latitudeDelta: 70.0, longitudeDelta: 70.0)
        var mapRegion = MKCoordinateRegion(center: mapCoordinates, span: mapZoomLevel)

        return mapRegion
    }()
    let locations: [NationalParkLocation] = Bundle.main.decode("locations.json")
    
    
    
    // MARK: BODY
    var body: some View {
        // MARK: - No1 Basic Map
        // Map(coordinateRegion: $region)
        
        // MARK: - No2 Advance Map
        Map(coordinateRegion: $region, annotationItems: locations, annotationContent: {item in
            // (A) PIN: OLD STYLE ( ALWAYS STATIC )
            //MapPin(coordinate: item.location, tint: .accentColor)
            
            // (B) MARKER: NEW STYLE ( ALWAYS STATIC )
            //MapMarker(coordinate: item.location, tint: .accentColor)
            
            // (C) CUSTOM BASIC ANNOTATION( IT COULD BE INTERATIVE )
//            MapAnnotation(coordinate: item.location) {
//                Image("logo")
//                    .resizable()
//                    .scaledToFit()
//                    .frame(width: 32, height: 32, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
//            } //: ANNOTATION
            
            // (D) CUSTOM ADVANCED ANNOTATION ( IT COULD BE INTERACTIVE )
            MapAnnotation(coordinate: item.location) {
                MapAnnotationView(location: item)
            }
        }) //: MAP
        .overlay(
            HStack(alignment: .center, spacing: 12){
            Image("compass")
                .resizable()
                .scaledToFit()
                .frame(width: 48, height: 48, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                
            VStack(alignment: .leading, spacing: 3){
                HStack{
                    Text("Latitude")
                        .font(.footnote)
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .foregroundColor(.accentColor)
                    Spacer()
                    Text("\(region.center.latitude)")
                        .font(.footnote)
                        .foregroundColor(Color.white)
                } //: HSTACK
                
                Divider()
                
                HStack{
                    Text("Longitude")
                        .font(.footnote)
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .foregroundColor(.accentColor)
                    Spacer()
                    Text("\(region.center.longitude)")
                        .font(.footnote)
                        .foregroundColor(Color.white)
                } //: HSTACK
            } //: VSTACK
        } //: HSTACK
        .padding(.vertical, 12)
        .padding(.horizontal, 16)
            .background(
            Color.black
                    .cornerRadius(8)
                    .opacity(0.6)
        )
        .padding()
        , alignment: .top
       )
    }
}
// MARK: PREVIEW
struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
