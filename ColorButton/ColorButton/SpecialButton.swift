//
//  SpecialButton.swift
//  ColorButton
//
//  Created by Pitambar Dayal on 12/15/21.
//

import SwiftUI


struct SpecialButton: View {
    var buttonText = "My Button"
    var buttonColor  = Color.blue
    
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 5)
                .frame(width: 150, height: 55)
                .foregroundStyle(.regularMaterial)
            Text(buttonText)
                .fontWeight(.semibold)
            LeftCorner()
                .trim(from: 0.4, to: 0.6)
                .fill(buttonColor)
                .frame(width: 150, height: 55)
        }
        .ignoresSafeArea()
    }
}

struct LeftCorner: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        path.addRoundedRect(in: rect, cornerSize: CGSize(width: 5, height: 5))
        return path
    }
}

struct SpecialButton_Previews: PreviewProvider {
    static var previews: some View {
        SpecialButton()
    }
}
