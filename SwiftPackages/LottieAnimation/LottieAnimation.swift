//
//  LottieAnimation.swift
//  SwiftPackages
//
//  Created by Muktar Hussein on 23/03/2024.
//

import SwiftUI
import Lottie



struct LottieAnimation: View {
    @State private var showSheet: Bool = false
    var body: some View {
        VStack {
            
            LottieView(animation: .named("card"))
                .configure({ lottieView in
                    lottieView.contentMode = .center
//                    lottieView.animationSpeed = .infinity
                    
                })
                .playbackMode(.playing(.toProgress(1, loopMode: .repeatBackwards(4))))
                .animationDidFinish { completed in
                    // whats do happen after a successful animation
                    if completed {
                        showSheet = true
                    }
                }

        }
        .sheet(isPresented: $showSheet, content: {
            Text("Animation completed")
        })
    }
}

#Preview {
    LottieAnimation()
}


