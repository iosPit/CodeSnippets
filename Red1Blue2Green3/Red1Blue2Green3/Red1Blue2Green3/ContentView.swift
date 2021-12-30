//
//  ContentView.swift
//  Red1Blue2Green3
//
//  Created by Pitambar Dayal on 12/29/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                CircleNumberView(circleColor: .red, innerNumber: 1, navigationTitle: "Red One")
                
                NavigationLink(destination: BlueTwoView(), label: {
                    Text("Next Screen")
                        .bold()
                        .frame(width: 280, height: 50)
                        .background(.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                })
            }
        }
        .accentColor(Color(.label))
    }
}

struct BlueTwoView: View {
    var body: some View {
        VStack {
            CircleNumberView(circleColor: .blue, innerNumber: 2, navigationTitle: "Blue Two")
            
            NavigationLink(destination: CircleNumberView(circleColor: .green, innerNumber: 3, navigationTitle: "Green Three"), label: {
                Text("Next Screen")
                    .bold()
                    .frame(width: 280, height: 50)
                    .background(.green)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            })
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
