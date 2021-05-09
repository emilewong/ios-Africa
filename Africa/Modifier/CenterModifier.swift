//
//  CenterModifier.swift
//  Africa
//
//  Created by Emile Wong on 26/4/2021.
//

import SwiftUI

struct CenterModifier:
    ViewModifier {
        func body(content: Content) -> some View {
            HStack{
                Spacer()
                content
                Spacer()
            }
        }
    }
