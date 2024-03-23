//
//  SwiftfulRouting.swift
//  SwiftPackages
//
//  Created by Muktar Hussein on 21/03/2024.
//

import SwiftUI
import SwiftfulRouting

// used this at the root of your app
struct SwiftfulRouting: View {
    var body: some View {
        RouterView { _ in
            MyHomeView()
        }
    }
}

struct MyHomeView: View {
    var body: some View {
        Text("Hello, World!")
    }
}

#Preview {
    SwiftfulRouting()
}
