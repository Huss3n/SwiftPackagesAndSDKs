//
//  Keychain.swift
//  SwiftPackages
//
//  Created by Muktar Hussein on 19/03/2024.
//

import SwiftUI


// keychain is like user defaults and app storage
// it is used to store and persist data between app sessions
// For keychain the persisted data is encrypted
// it is used to store sensitive information such as passwords, credit card details, pii
// keychain persists between installs so if the apps deleted the data will remain in keychain  and used in the next install
// keychain also persists data across devices 

struct Keychain: View {
    var body: some View {
        Text("Hello world")
    }
}


struct Keychain_Preview: PreviewProvider {
    static var previews: some View {
        Keychain()
    }
}
