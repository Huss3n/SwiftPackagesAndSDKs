//
//  PrefetcherKF.swift
//  SwiftPackages
//
//  Created by Muktar Hussein on 19/03/2024.
//

import Foundation
import Kingfisher

final class PrefetcherKF {
    static let shared = PrefetcherKF()
    
    var prefetcher: Kingfisher.ImagePrefetcher? = nil
    
    private init() { }
    
    func startPrefetching(urls: [URL]) {
        prefetcher = Kingfisher.ImagePrefetcher(urls: urls)
        prefetcher?.start()
    }
    
    func stopPrefetching() {
        prefetcher?.stop()
    }
}
