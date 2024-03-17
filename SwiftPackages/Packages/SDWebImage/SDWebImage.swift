//
//  SDWebImage.swift
//  SwiftPackages
//
//  Created by Muktar Hussein on 14/03/2024.
// https://picsum.photos/seed/picsum/200/300

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

// MARK: Prefetch images - if you know a user will navigate to a screen and you want to fetch images in advance

final class ImagePrefetcher {
    static let shared = ImagePrefetcher()
    
    let prefetcher = SDWebImagePrefetcher()
    
    private init() { }
    
    func startPrefetching(urls: [URL]) {
        prefetcher.prefetchURLs(urls)
    }
    
    func stopPrefetching() {
        prefetcher.cancelPrefetching()
    }
}

// create one struct in code where it can only be accessd
fileprivate struct SDWebImage: View { // <- file private means this struct can only be accessed in one place
    
    let url: String
    var contentMode: ContentMode = .fill
    
    var body: some View {
        WebImage(url: URL(string: url)) { image in
            image
                .resizable()
                .aspectRatio(contentMode: contentMode)
                .transition(.fade(duration: 0.5))
                .frame(width: 300, height: 300)
            
        } placeholder: {
            Rectangle()
                .frame(width: 300, height: 300)
                .foregroundStyle(.gray.opacity(0.2))
                .overlay {
                    ProgressView()
                }
        }
        .onSuccess { image, data, cacheType in
            
        }
        
//            .indicator(.activity)
        
        /*
         // Supports options and context, like `.delayPlaceholder` to show placeholder only when error
            .onSuccess { image, data, cacheType in
                // Success
                // Note: Data exist only when queried from disk cache or network. Use `.queryMemoryData` if you really need data
            }
            .indicator(.activity) // Activity Indicator
            .transition(.fade(duration: 0.5)) // Fade Transition with duration
            .scaledToFit()
            .frame(width: 300, height: 300, alignment: .center)
         */
    }
}


// use case scenario
struct UseWebImage: View {
    var body: some View {
        ImageLoader(url: "https://picsum.photos/seed/picsum/200/300", contentMode: .fit)
            .onAppear(
//                ImagePrefetcher.shared.startPrefetching(urls: [URL])
            )
    }
}


#Preview {
    UseWebImage()
}


