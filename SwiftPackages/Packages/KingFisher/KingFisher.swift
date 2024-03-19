//
//  KingFisher.swift
//  SwiftPackages
//
//  Created by Muktar Hussein on 19/03/2024.
//

import SwiftUI
import Kingfisher



struct KingFisher: View {
    var body: some View {
        KFImage(URL(string: "https://picsum.photos/seed/picsum/200/300"))
            .placeholder { _ in
                ProgressView()
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
    KingFisher()
}
