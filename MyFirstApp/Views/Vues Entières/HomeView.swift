//
//  ContentView.swift
//  MyFirstApp
//
//  Created by Linda Phan on 11/11/2020.
//

import SwiftUI

struct HomeView: View {
    
    @State private var isShowingHabitCreation: Bool = false
    @ObservedObject var habitLibrary: HabitLibrary
    @State var isShowingFavouriteOnly: Bool = false
    
    @FetchRequest(entity: HabitEntity.entity(), sortDescriptors: [
        NSSortDescriptor(keyPath: \HabitEntity.name, ascending: true)
    ]) var habits: FetchedResults<HabitEntity>
    
    
    var body: some View {
        NavigationView { 
        ZStack (alignment: Alignment(horizontal: .trailing, vertical: .bottom)){
            
                ScrollView {
                    VStack{
                        ForEach(habits) { habitEntity in
                            if habitEntity.isFavourite || !isShowingFavouriteOnly {
                                ZStack{
                                    RoundedRectangle(cornerRadius: 16, style: .continuous)
                                        .fill(Color.white)
                                        .shadow(color: Color(Color.RGBColorSpace.sRGB, white: 0, opacity: 0.2), radius: 4)
                                    NavigationLink(
                                        destination: DetailsView(habitEntity: habitEntity),
                                        label: {
                                            HabitCellView(habitEntity: habitEntity)
                                                .foregroundColor(.black)
                                        })
                                }
                            }
                        }
                    }.padding(.horizontal,16)
                    .animation(.default)
                    
                    
                }.navigationTitle(Text("Mes habitudes"))
                .navigationBarItems(trailing: Toggle(isOn: $isShowingFavouriteOnly, label: {
                    Text(" Only ❤️ ")
                }))
            AddButtonView(action: {
                isShowingHabitCreation.toggle()
            }).sheet(isPresented: $isShowingHabitCreation, content: {
                HabitCreationView(habitLibrary: habitLibrary)
            })
                .padding()
            }
            
        }
    }
}




struct ContentView_Previews: PreviewProvider {
    @StateObject static var habitLibrary = HabitLibrary()
    
    static var previews: some View {
        HomeView(habitLibrary: habitLibrary)
      
    }
}




