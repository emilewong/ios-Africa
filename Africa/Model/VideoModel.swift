//
//  VideoModel.swift
//  Africa
//
//  Created by Emile Wong on 23/4/2021.
//

import SwiftUI

struct Video: Codable, Identifiable {
    let id: String
    let name: String
    let headline: String
    
    var thumbnail: String {
        "video-\(id)"
    }
    
}
