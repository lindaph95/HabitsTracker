//
//  Demande client.swift
//  MyFirstApp
//
//  Created by Linda Phan on 11/11/2020.
//

import SwiftUI

struct Demande_client: View {
    var body: some View {
        VStack {
            HStack{
                
                    Image(systemName: "video")
                        .font(.system(size: 25))
                        .padding(.trailing,60)
                        .padding(.bottom,110)
                
                VStack {
                    Image("running")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 160, height: 160)
                        .cornerRadius(80)
                    Text("Linda")
                        .fontWeight(.semibold)
                        .font(.title3)
                    Text("652 abonnés")
                        .font(.subheadline)
                }
                
                    Image(systemName: "message")
                        .font(.system(size: 25))
                        .padding(.leading,60)
                        .padding(.bottom,110)
                        
                
            }
            
        }
        
        
            
            
    }
}

struct Demande_client_Previews: PreviewProvider {
    static var previews: some View {
        Demande_client()
    }
}
