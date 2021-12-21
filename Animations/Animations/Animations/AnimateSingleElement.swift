//
//  AnimateSingleElement.swift
//  Animations
//
//  Created by Pitambar Dayal on 12/20/21.
//

import SwiftUI

struct AnimateSingleElement: View {
    @State private var selectedButton = -1
    
    var body: some View {
        VStack {
            
            Spacer()
            
            ForEach(0..<3) { number in
                Button("Button #\(number + 1)") {
                    selectedButton = number
                }
                .font(.title)
                .frame(width: 200, height: 200)
                .background(selectedButton == number ? .green : .gray)
                .scaleEffect(selectedButton == number ? 1.2 : 1)
                .animation(.default, value: selectedButton)
                
                Spacer()
            }
        }
    }
}

struct AnimateSingleElement_Previews: PreviewProvider {
    static var previews: some View {
        AnimateSingleElement()
    }
}
