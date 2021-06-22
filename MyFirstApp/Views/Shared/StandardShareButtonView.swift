//
//  StandardShareButtonView.swift
//  MyFirstApp
//
//  Created by Phan Linda on 22/01/2021.
//

import SwiftUI

struct StandardShareButtonView: View {
    
    let color: Color
    let action: () -> Void
    let title: String
    
    
    var body: some View {
        Button(action: action, label: {
            HStack {
                Spacer()
                Text(title)
                    .fontWeight(.semibold)
                    .padding()
                    .foregroundColor(.white)
                    
                Spacer()
            }
                
        }).background(color)
        .cornerRadius(10)
        .shadow(radius: 2)
        .padding(6)
    }
}

struct StandardShareButtonView_Previews: PreviewProvider {
    static var previews: some View {
        StandardShareButtonView(color: .blue, action: {}, title: "Test Button")
    }
}
