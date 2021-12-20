//
//  SnakeTextAnimation.swift
//  Animations
//
//  Created by Pitambar Dayal on 12/19/21.
//

import SwiftUI

struct SnakeTextAnimation: View {
    let snakeText = Array("Snake Text Animation")
    @State private var isEnabled = false
    @State private var dragAmount = CGSize.zero
    
    
    var body: some View {
        HStack(spacing: 0) {
            ForEach(0..<snakeText.count) { num in
                Text(String(snakeText[num]))
                    .padding(1)
                    .font(.title)
                    .background(isEnabled ? .blue : .red)
                    .offset(dragAmount)
                    .animation(.default.delay(Double(num)/20), value: dragAmount)
            }
        }
        .gesture(
            DragGesture()
                .onChanged { dragAmount = $0.translation }
                .onEnded { _ in
                    dragAmount = .zero
                    isEnabled.toggle()
                }
        )
    }
}

struct SnakeTextAnimation_Previews: PreviewProvider {
    static var previews: some View {
        SnakeTextAnimation()
    }
}
