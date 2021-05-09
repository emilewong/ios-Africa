//
//  VideoListView.swift
//  Africa
//
//  Created by Emile Wong on 21/4/2021.
//

import SwiftUI

struct VideoListView: View {
    // MARK: PROPERTIES
    @ State var videos: [Video] = Bundle.main.decode("videos.json")
    let hapticImpact = UIImpactFeedbackGenerator(style: .medium)
    
    // MARK: BODY
    var body: some View {
        /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Container@*/VStack/*@END_MENU_TOKEN@*/ {
            NavigationView {
                List{
                    ForEach(videos) { item in
                        NavigationLink(
                            destination: VideoPlayerView(videoSelected: item.id, videoTitle: item.name)){
                            VideoListItemView(video: item)
                                .padding(.vertical,8)
                        }
                    } //: LOOP
                } //: LIST
                .listStyle(InsetGroupedListStyle())
                .navigationBarTitle("Videos", displayMode: .inline)
                .toolbar(content: {
                    ToolbarItem(placement: .navigationBarTrailing){
                        Button(action: {
                            videos.shuffle()
                            hapticImpact.impactOccurred()
                        }) {
                            Image(systemName: "arrow.2.squarepath")
                        } //: BUTTON
                    } //: TOOLBARITEM
                }) //: TOOLBAR
            } //: NAVIGATION
            
        } //: CONTAINER
    }
}
// MARK: PREVIEW
struct VideoListView_Previews: PreviewProvider {
    static var previews: some View {
        VideoListView()
    }
}
