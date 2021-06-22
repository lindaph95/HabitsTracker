//
//  TimeConfigurationView.swift
//  MyFirstApp
//
//  Created by Phan Linda on 12/04/2021.
//

import SwiftUI

struct TimeConfigurationView: View {
    
    @Binding var selectedMinutes: Int
    @Binding var selectedDate: Date
    
    var body: some View {
        VStack{
            
            Picker("Minutes", selection: $selectedMinutes) {
                ForEach(0..<60){
                    Text("\($0)")
                }.rotationEffect(Angle(degrees: +90))
            }.rotationEffect(Angle(degrees: -90))
            .frame(maxHeight: 50)
            .clipped()
            
            DatePicker("Choisir une date ", selection: $selectedDate, in: ...Date(), displayedComponents: .date)
        }.padding(6)
    }
}

struct TimeConfigurationView_Previews: PreviewProvider {
    
    @State static var selectedMinutes: Int = 30
    @State static var selectedDate: Date = Date()
    static var previews: some View {
        TimeConfigurationView(selectedMinutes: $selectedMinutes, selectedDate: $selectedDate)
    }
}
