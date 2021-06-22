//
//  Test2View.swift
//  MyFirstApp
//
//  Created by Linda Phan on 22/11/2020.
//

import SwiftUI
import KingfisherSwiftUI

struct Test2View: View {
    
    let layout = [
        GridItem(.flexible(), spacing: 2),
        GridItem(.flexible(), spacing: 2),
        GridItem(.flexible(), spacing: 2)
    ]
    
    let listOfPictures = [ URL(string: "https://images.pexels.com/photos/3225531/pexels-photo-3225531.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"), URL(string: "https://images.pexels.com/photos/3214958/pexels-photo-3214958.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"), URL(string: "https://images.pexels.com/photos/885880/pexels-photo-885880.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"), URL(string: "https://images.pexels.com/photos/3225529/pexels-photo-3225529.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"), URL(string: "https://images.pexels.com/photos/3889855/pexels-photo-3889855.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"), URL(string: "https://images.pexels.com/photos/2147486/pexels-photo-2147486.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"), URL(string: "https://images.pexels.com/photos/1371360/pexels-photo-1371360.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"), URL(string: "https://images.pexels.com/photos/731217/pexels-photo-731217.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"), URL(string: "https://images.pexels.com/photos/2265876/pexels-photo-2265876.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"), URL(string: "https://images.pexels.com/photos/1576937/pexels-photo-1576937.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"), URL(string: "https://images.pexels.com/photos/307008/pexels-photo-307008.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"), URL(string: "https://images.pexels.com/photos/1262304/pexels-photo-1262304.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"), URL(string: "https://images.pexels.com/photos/2303781/pexels-photo-2303781.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500") ]

    let pictureSize = (UIScreen.main.bounds.width - 4) / 3
    
    
    var body: some View {
        LazyVGrid(columns: layout, spacing:2){
            ForEach(listOfPictures, id: \.self){ pictureURL in
                KFImage(pictureURL)
                    .resizable()
                    .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                    .frame(width: pictureSize, height:pictureSize)
                    .clipped()
                
            }
        }
    }
}

struct Test2View_Previews: PreviewProvider {
    static var previews: some View {
        Test2View()
    }
}
