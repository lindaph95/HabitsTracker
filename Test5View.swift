//
//  Test5View.swift
//  MyFirstApp
//
//  Created by Phan Linda on 27/01/2021.
//

import SwiftUI
import KingfisherSwiftUI

struct Test5View: View {
    var body: some View {
        ProfilePicture(url: URL(string: "https://images.pexels.com/photos/415829/pexels-photo-415829.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500")!, tintColor: .yellow,
                       isEditable: true)
    }
}

struct Test5View_Previews: PreviewProvider {
    static var previews: some View {
        Test5View()
    }
}

struct ProfilePicture: View {
    
    var url: URL
    var tintColor: Color
    var isEditable: Bool = false
    
    
    var body: some View {
        ZStack (alignment: Alignment(horizontal: .trailing, vertical: .bottom)){
            ZStack{
                KFImage(url)
                    .resizable()
                    .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    .padding(6)
                Circle()
                    .stroke(tintColor, lineWidth: 5)
            }.frame(width: 180, height: 180)

            if isEditable {
                Button(action: {
                
                }, label: {
                    Image(systemName: "pencil.circle")
                        .font(.system(size: 40))
                        .background(Color.white)
                        .foregroundColor(tintColor)
                        .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                })
            }
            }
            }
}
