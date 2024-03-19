//
//  PrefetchingImage.swift
//  SwiftPackages
//
//  Created by Muktar Hussein on 19/03/2024.
//

import Foundation
import SDWebImageSwiftUI

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
