//
//  Red1Blue2Green3App.swift
//  Red1Blue2Green3
//
//  Created by Pitambar Dayal on 12/29/21.
//

import SwiftUI



@main
struct Red1Blue2Green3App: App {
    
    init() {
        UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor : UIColor.red]
    }
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
