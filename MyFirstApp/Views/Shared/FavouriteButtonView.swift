//
//  FavouriteButton.swift
//  MyFirstApp
//
//  Created by Linda Phan on 11/11/2020.
//

import SwiftUI

import SwiftUI

struct FavouriteButtonView: View {
    
    let onColor: Color
    let offColor: Color
    
    @Binding var isLiked: Bool
    
    
    var body: some View {
        Button(action: {toggle()}, label: {
            Image(systemName: isLiked ? "heart.fill" : "heart")
                .foregroundColor(isLiked ? onColor : offColor)
                .font(.system(size: 25))
                .padding(10)
                
        })
    }
    private func toggle(){
        isLiked.toggle()
    }
}

struct FavouriteButtonView_Previews: PreviewProvider {
    
    @State static var isLiked: Bool = true
    @State static var isNotLiked: Bool = false
    
    static var previews: some View {
        
        Group {
            FavouriteButtonView(onColor: .red, offColor: .gray, isLiked: $isNotLiked)
            FavouriteButtonView(onColor: .red, offColor: .gray, isLiked: $isLiked)
        }.previewLayout(.sizeThatFits)
            
    }
}
