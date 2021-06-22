//
//  CoverSelectionView.swift
//  MyFirstApp
//
//  Created by Linda Phan on 22/11/2020.
//

import SwiftUI
import KingfisherSwiftUI

struct CoverSelectionView: View {
    
    @Binding var selectedURL: URL?
    

    
    let layout = [
        GridItem(.flexible(), spacing: 2),
        GridItem(.flexible(), spacing: 2),
    ]
    
    
    let pictureSizeCover = (UIScreen.main.bounds.width - 2) / 2
    
    var body: some View {
        ScrollView{
            LazyVGrid(columns: layout, spacing: 2){
                ForEach(listOfUrl, id: \.self){ url in
                    ZStack(alignment: Alignment(horizontal: .trailing, vertical: .top)){
                        KFImage(url)
                            .resizable()
                            .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                            .frame(width: pictureSizeCover, height: 130)
                            .clipped()
                            .onTapGesture(perform: {
                                selectedURL = url
                            })
                        if selectedURL == url{
                            Rectangle()
                                .foregroundColor(.clear)
                                .border(Color.blue, width: 3)
                            Image(systemName: "checkmark.circle.fill")
                                .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                                .font(.system(size: 23))
                                .padding(5)
                        }
                            
                    }
                    
                }
            }
        }
        
        
    }
}

struct CoverSelectionView_Previews: PreviewProvider {
    
    @State static var selectedURL: URL? = nil
    
    static var previews: some View {
        CoverSelectionView(selectedURL: $selectedURL)
    }
}
