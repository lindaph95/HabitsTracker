//
//  Test4View.swift
//  MyFirstApp
//
//  Created by Phan Linda on 09/12/2020.
//

import SwiftUI

struct Test4View: View {
    var body: some View {
        ZStack {
            HStack {
                LinearGradient(gradient: Gradient(colors: [Color.green, Color.clear]), startPoint: .topLeading, endPoint: .bottomTrailing)
                    .frame(width:150, height:150)
                    .border(Color.red)
                    .cornerRadius(20)
                    .shadow(color: Color(Color.RGBColorSpace.sRGB,white: 0, opacity: 0.9), radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
            }
            Text("Coucou")
                .font(.title2)
                .fontWeight(.semibold)
        }
    }
}

struct Test4View_Previews: PreviewProvider {
    static var previews: some View {
        Test4View()
    }
}
