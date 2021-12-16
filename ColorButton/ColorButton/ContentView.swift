//
//  ContentView.swift
//  ColorButton
//
//  Created by Pitambar Dayal on 12/15/21.
//

// From tutorial https://www.youtube.com/watch?v=XVC0wQND1N8

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Color.secondary
            VStack {
                SpecialButton(buttonText: "Button 1", buttonColor: .red)
                    .onTapGesture { print("Hello Button 1") }
                
                // Advantage = button blinks when clicked
                Button(action: {
                    print("Hello Button 2")
                }, label: {
                    SpecialButton(buttonText: "Button 2", buttonColor: .blue)
                })
                    .foregroundColor(.black)
            }
        }
        .ignoresSafeArea()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
