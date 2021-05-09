//
//  CreditsView.swift
//  Africa
//
//  Created by Emile Wong on 26/4/2021.
//

import SwiftUI

struct CreditsView: View {
    // MARK: PROPERTIES
    
    // MARK: BODY
    var body: some View {
        VStack {
            Image("compass")
                .resizable()
                .scaledToFit()
                .frame(width: 128, height: 128)
            Text("""
    Copyright @ Emile Wong
    All right reserved
    Better Apps 🧡 Less Code
    """)
                .font(.footnote)
                .multilineTextAlignment(.center)
        } //: VSTACK
        .padding()
        .opacity(0.4)
    }
}

// MARK: PREVIEW
struct CreditsView_Previews: PreviewProvider {
    static var previews: some View {
        CreditsView()
    }
}
