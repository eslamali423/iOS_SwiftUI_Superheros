//
//  SuperherosAppApp.swift
//  SuperherosApp
//
//  Created by Eslam Ali  on 20/03/2022.
//

import SwiftUI

@main
struct SuperherosAppApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(superheros: superherosData)
        }
    }
}
