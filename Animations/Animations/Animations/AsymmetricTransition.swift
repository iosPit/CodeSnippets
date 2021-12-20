//
//  AsymmetricTransition.swift
//  Animations
//
//  Created by Pitambar Dayal on 12/20/21.
//

import SwiftUI

struct AsymmetricTransition: View {
    @State private var showingRed = false
    
    var body: some View {
        VStack {
            Button("Hello World") {
                withAnimation { showingRed.toggle() }
            }
            
            if showingRed {
                RoundedRectangle(cornerRadius: 50)
                    .fill(.red)
                    .frame(width: 200, height: 200)
                    .transition(.asymmetric(insertion: .scale, removal: .opacity))
            }
        }
    }
}

struct AsymmetricTransition_Previews: PreviewProvider {
    static var previews: some View {
        AsymmetricTransition()
    }
}
