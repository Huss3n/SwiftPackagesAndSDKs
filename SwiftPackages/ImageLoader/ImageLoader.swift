//
//  ImageLoader.swift
//  SwiftPackages
//
//  Created by Muktar Hussein on 19/03/2024.
//

import SwiftUI
import SDWebImageSwiftUI


// app use case - makes it easy to replace the sdk in one point
struct ImageLoader: View {
    
    let url: String
    var contentMode: ContentMode = .fill
    
    var body: some View {
        VStack {
            // sd web image
            SDWebImage(url: url, contentMode: contentMode)
                .allowsHitTesting(false) // <- removes the tap on the image
            
            // kingfisher
            KingFisher(url: url, contentMode: .fill)
        }
    }
}
#Preview {
    ImageLoader(url: "https://picsum.photos/seed/picsum/200/300", contentMode: .fit)
}
