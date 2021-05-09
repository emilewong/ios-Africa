//
//  AnimalListItemView.swift
//  Africa
//
//  Created by Emile Wong on 22/4/2021.
//

import SwiftUI

struct AnimalListItemView: View {
    // MARK: PROPERTIES
    let animal: Animal
    
    // MARK: BODY
    var body: some View {
        HStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 17, content: {
            Image(animal.image)
                .resizable()
                .scaledToFill()
                .frame(width: 90, height: 90)
                .clipShape(RoundedRectangle(cornerRadius: 12))
            VStack(alignment: .leading, spacing: 8, content: {
                Text(animal.name)
                    .font(.title2)
                    .fontWeight(.heavy)
                    .foregroundColor(.accentColor)
                Text(animal.headline)
                    .font(.footnote)
                    .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                    .lineLimit(/*@START_MENU_TOKEN@*/2/*@END_MENU_TOKEN@*/)
                    .padding(.trailing, 8)
            }) //: STACK
        }) //: HSTACK
    }
}

// MARK: PREVIEW
struct AnimalListItemView_Previews: PreviewProvider {
    static let animals:[Animal] = Bundle.main.decode("animals.json")
    static var previews: some View {
        AnimalListItemView(animal: animals[1])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
