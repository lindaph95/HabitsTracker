//
//  AddButtonView.swift
//  MyFirstApp
//
//  Created by Linda Phan on 13/11/2020.
//

import SwiftUI

struct AddButtonView: View {
    
    let action: () -> Void
    
    var body: some View {
        Button(action: action, label: {
            ZStack {
                Circle()
                    .frame(width: 70, height: 70, alignment: .trailing)
                    .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                    .cornerRadius(35)
                
                Image(systemName: "plus")
                    .foregroundColor(.white)
                    .font(Font.system(size: 22, weight: .semibold))
            }.shadow(radius: 10)
        })
    }
}

struct AddButtonView_Previews: PreviewProvider {
    static var previews: some View {
        AddButtonView(action: {})
            .previewLayout(.sizeThatFits)
            .padding(10)
    }
}
