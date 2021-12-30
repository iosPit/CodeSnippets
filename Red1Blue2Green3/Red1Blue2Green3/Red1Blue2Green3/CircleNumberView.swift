//
//  CircleNumberView.swift
//  Red1Blue2Green3
//
//  Created by Pitambar Dayal on 12/29/21.
//

import SwiftUI

struct CircleNumberView: View {
    var circleColor: Color
    var innerNumber: Int
    var navigationTitle: String
    
    var body: some View {
        ZStack {
            Circle()
                .frame(width: 200, height: 200)
                .foregroundColor(circleColor)
            Text("\(innerNumber)")
                .foregroundColor(.white)
                .font(.system(size: 70, weight: .bold))
        }
        .offset(y: -60)
        .navigationTitle(navigationTitle)
    }
}

struct CircleNumberView_Previews: PreviewProvider {
    static var previews: some View {
        CircleNumberView(circleColor: .red, innerNumber: 1, navigationTitle: "Red One")
    }
}
