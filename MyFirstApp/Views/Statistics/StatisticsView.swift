//
//  StatisticsView.swift
//  MyFirstApp
//
//  Created by Phan Linda on 24/03/2021.
//

import SwiftUI

struct StatisticsView: View {
    
    @FetchRequest(entity: HabitEntity.entity(), sortDescriptors: [
        NSSortDescriptor(keyPath: \HabitEntity.name, ascending: true)
    ]) var habits: FetchedResults<HabitEntity>
    
   
    var body: some View {
        ScrollView{
            VStack{
                RankingView()
                ForEach(habits){ habit in
                    VStack(alignment: .leading, spacing: 10){
                        Text(habit.name)
                            .font(.title2)
                            .fontWeight(.semibold)
                        StatisticsHabitView(habitEntity: habit)
                            .frame(minHeight: 200)
                    }
                }
            }.padding(6)
        }
    }
}

struct StatisticsView_Previews: PreviewProvider {
   
    static var previews: some View {
        StatisticsView()
    }
}
