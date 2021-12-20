//
//  ContentView.swift
//  Animations
//
//  Created by Pitambar Dayal on 12/19/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            SnakeTextAnimation()
            //AsymmetricTransition()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
