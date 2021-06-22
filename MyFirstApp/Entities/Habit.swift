//
//  Habit.swift
//  MyFirstApp
//
//  Created by Linda Phan on 12/11/2020.
//

import Foundation

class Habit : Identifiable,ObservableObject {
    let id = UUID().uuidString
    @Published var imageURL : URL?
    @Published var name : String
    var totalTime: Int {
        var sum = 0
        for slot in timeSlots{
            sum += slot.minutes
        }
        return sum
    }
    @Published var isFavourite: Bool
    @Published var description: String
    @Published var timeSlots: [SpentTime]
    
    
    init(imageURL: URL?, name: String, isFavourite: Bool, description: String){
        self.imageURL = imageURL
        self.name = name
        self.isFavourite = isFavourite
        self.description = description
        self.timeSlots = []
    }
    
    
//    init(habitEntity: HabitEntity){
//        self.imageURL = habitEntity.imageURL
//        self.name = habitEntity.name
//        self.isFavourite = habitEntity.isFavourite
//        self.description = habitEntity.stringDescription
//        self.timeSlots = []
//    }
    
    
    init(config: NewHabitConfig){
        self.imageURL = config.imageURL
        self.description = config.description
        self.name = config.name
        self.isFavourite = false
        self.timeSlots = []
    }

}
