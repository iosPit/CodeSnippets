//
//  ContentView.swift
//  CountdownTimer
//
//  Created by Pitambar Dayal on 12/17/21.
//

import SwiftUI

let defaultTimeRemaining: CGFloat = 10
let lineWidth: CGFloat = 30
let radius: CGFloat = 70

struct ContentView: View {
    
    @State private var isActive = false
    @State private var timeRemaining: CGFloat = defaultTimeRemaining
    
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    
    var body: some View {
        VStack(spacing: 25) {
            ZStack {
                Circle()
                    .stroke(Color.gray.opacity(0.2), style: StrokeStyle(lineWidth: lineWidth, lineCap: .round))
    
                Circle()
                    .trim(from: 0, to: 1 - (defaultTimeRemaining - timeRemaining)/defaultTimeRemaining)
                    .stroke(timeRemaining > 6 ? Color.green : timeRemaining > 3 ? Color.yellow : Color.red, style: StrokeStyle(lineWidth: lineWidth, lineCap: .round))
                    .rotationEffect(.degrees(-90))
                    .animation(.easeInOut)
                
                Text("\(Int(timeRemaining))").font(.largeTitle)
            }
            .frame(width: 2 * radius, height: 2 * radius)
            
            HStack(spacing: 25) {
                Label("\(isActive ? "Pause" : "Play")", systemImage: (isActive ? "pause.fill" : "play.fill"))
                    .foregroundColor(isActive ? .red : .yellow)
                    .font(.title)
                    .onTapGesture {
                        isActive.toggle()
                    }
                
                Label("Restart", systemImage: "backward.fill")
                    .foregroundColor(.black)
                    .font(.title)
                    .onTapGesture {
                        isActive = false
                        timeRemaining = defaultTimeRemaining
                    }
            } .onReceive(timer, perform: { _ in
                guard isActive else { return }
                if timeRemaining > 0 {
                    timeRemaining -= 1
                } else {
                    isActive = false
                    timeRemaining = defaultTimeRemaining
                }
            })
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
