//
//  HabitCellView.swift
//  MyFirstApp
//
//  Created by Linda Phan on 12/11/2020.
//

import SwiftUI
import KingfisherSwiftUI

struct HabitCellView: View {
    @ObservedObject var habitEntity: HabitEntity
    
    var body: some View {
        HStack {
            KFImage(habitEntity.imageURL)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 80, height: 80)
                .clipped()
                .cornerRadius(10)
                .padding(.trailing,8)
            VStack (alignment: .leading) {
                Text(habitEntity.name)
                    .font(.system(.title3))
                    .fontWeight(.semibold)
                Text("Total: \(habitEntity.totalMinutesSpent()) minutes")
                
            }
            Spacer()
            FavouriteButtonView(onColor: .red, offColor: .gray, isLiked: $habitEntity.isFavourite)
        }.padding(8)
    }
}



struct HabitCellView_Previews: PreviewProvider {
    
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
        HabitCellView(habitEntity: habitEntity)
            .previewLayout(.sizeThatFits)
    }
}
