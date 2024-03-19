//
//  ImageLoader.swift
//  SwiftPackages
//
//  Created by Muktar Hussein on 19/03/2024.
//

import SwiftUI
import SDWebImageSwiftUI


struct ImageLoader: View {
    
    let url: String
    var contentMode: ContentMode = .fill
    
    var body: some View {
        SDWebImage(url: url, contentMode: contentMode)
            .allowsHitTesting(false) // <-
    }
}
#Preview {
    ImageLoader(url: "https://picsum.photos/seed/picsum/200/300", contentMode: .fit)
}
