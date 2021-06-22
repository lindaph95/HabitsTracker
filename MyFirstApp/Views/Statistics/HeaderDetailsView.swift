//
//  HeaderDetailsView.swift
//  MyFirstApp
//
//  Created by Phan Linda on 01/04/2021.
//

import SwiftUI
import KingfisherSwiftUI

struct HeaderDetailsView: View {
    
    @ObservedObject var habitEntity: HabitEntity
    
    var body: some View {
        ZStack(alignment: .bottom){
            KFImage(habitEntity.imageURL)
                .resizable()
                .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                .frame(height: 200)
                .clipped()
            LinearGradient(gradient: Gradient(colors: [Color(white:0.2, opacity: 0.2), Color.clear]), startPoint: .bottom, endPoint: .top)
                .frame(height: 100)
            HStack{
                Text(habitEntity.name)
                    .foregroundColor(.white)
                    .font(.title2)
                    .fontWeight(.semibold)
                Spacer()
                FavouriteButtonView(onColor: .red, offColor: .white, isLiked: $habitEntity.isFavourite)
            }.padding(6)
        }
    }
}

struct HeaderDetailsView_Previews: PreviewProvider {
    static private let persistentController = PersistenceController.preview
    static private let habitEntity: HabitEntity = {
        let habitEntity = HabitEntity(context: persistentController.container.viewContext)
        habitEntity.id = UUID()
        habitEntity.name = " Habitude Test"
        habitEntity.stringDescription = " Description test "
        habitEntity.isFavourite = false
        habitEntity.imageURL = URL(string: "https://images.pexels.com/photos/4048182/pexels-photo-4048182.jpeg?auto=compress&cs=tinysrgb&h=750&w=1260")
        return habitEntity
    }()
    static var previews: some View {
        HeaderDetailsView(habitEntity: habitEntity)
    }
}
