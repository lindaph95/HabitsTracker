//
//  DescriptionDetailsView.swift
//  MyFirstApp
//
//  Created by Phan Linda on 12/04/2021.
//

import SwiftUI


struct DescriptionDetailsView: View {
    
    let description: String?
    let minutes: Int
    
    var body: some View {
        HStack{
            VStack(alignment: .leading, spacing: 10){
                
                if let description = description{
                    Text(description)
                }
                
                Text("Temps total: \(minutes) min")
                    .fontWeight(.semibold)
            }.foregroundColor(.secondary)
            .padding(6)
            Spacer()
        }
    }
}

struct DescriptionDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            DescriptionDetailsView(description: "Ceci est la description de mon habitude", minutes: 40)
            DescriptionDetailsView(description: nil, minutes: 40)
                
        }.previewLayout(.sizeThatFits)
        .padding()
    }
}
