//
//  InsetGalleryView.swift
//  Africa
//
//  Created by Emile Wong on 22/4/2021.
//

import SwiftUI

struct InsetGalleryView: View {
    // MARK: PROPERTIES
    let animal: Animal
    
    // MARK: BODY
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false){
            HStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 15, content: {
                ForEach(animal.gallery, id: \.self) { item in
                    Image(item)
                        .resizable()
                        .scaledToFit()
                        .frame(height: 200)
                        .cornerRadius(12)
                }
                
            }) //: HSTACK
        } //: SCROLL
    }
}

// MARK: PREVIEW
struct InsetGalleryView_Previews: PreviewProvider {
    static let animals: [Animal] = Bundle.main.decode("animals.json")
    static var previews: some View {
        InsetGalleryView(animal: animals[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
