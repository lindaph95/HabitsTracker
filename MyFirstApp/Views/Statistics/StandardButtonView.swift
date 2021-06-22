//
//  StandardButtonView.swift
//  MyFirstApp
//
//  Created by Phan Linda on 12/04/2021.
//

import SwiftUI

struct StandardButtonView: View {
    
    let title: String
    let color: Color
    let action: ()-> Void
    
    var body: some View {
        Button(action: action, label: {
            HStack{
                Spacer()
                Text(title)
                    .fontWeight(.semibold)
                    .padding()
                    .foregroundColor(.white)
                Spacer()
            }.background(color)
            .cornerRadius(10)
            .padding(6)
        })
        
    }
}

struct StandardButtonView_Previews: PreviewProvider {
    static var previews: some View {
        StandardButtonView(title: "Bouton Test", color: .blue, action: {})
    }
}
