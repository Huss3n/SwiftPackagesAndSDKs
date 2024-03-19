//
//  KingFisher.swift
//  SwiftPackages
//
//  Created by Muktar Hussein on 19/03/2024.
//

import SwiftUI
import Kingfisher


struct KingFisher: View {
    
    let url: String
    var contentMode: SwiftUI.ContentMode = .fill
    
    var body: some View {
        KFImage(URL(string: url))
            .placeholder { _ in
                ProgressView()
            }
            .onSuccess { result in
                
            }
            .onFailure { error in
                
            }
//            .lowDataModeSource(<#T##source: Source?##Source?#>)
            .onProgress { receivedSize, totalSize in
                    // when dealing with large images
            }
        
        
        /*
         // Use `KF` builder
         KF.url(url)
           .placeholder(placeholderImage)
           .setProcessor(processor)
           .loadDiskFileSynchronously()
           .cacheMemoryOnly()
           .fade(duration: 0.25)
           .lowDataModeSource(.network(lowResolutionURL))
           .onProgress { receivedSize, totalSize in  }
           .onSuccess { result in  }
           .onFailure { error in }
           .set(to: imageView)
         */
    }
}

#Preview {
    KingFisher(url: "https://picsum.photos/seed/picsum/200/300")
}
