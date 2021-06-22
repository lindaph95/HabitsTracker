//
//  DetailsView.swift
//  MyFirstApp
//
//  Created by Phan Linda on 12/04/2021.
//

import SwiftUI

struct DetailsView: View {
    
    @ObservedObject var habitEntity: HabitEntity
    
    @State var selectedMinutes: Int = 30
    @State var selectedDate: Date = Date()
    
    @State var addingTime: Bool = false
    
    @EnvironmentObject var habitLibrary: HabitLibrary
     
    @Environment(\.managedObjectContext) var viewContext
    
    @Environment(\.presentationMode) private var presentationMode
    
    
    var body: some View {
        NavigationView{
            ScrollView{
                VStack{
                    HeaderDetailsView(habitEntity: habitEntity)
                    DescriptionDetailsView(description: habitEntity.stringDescription, minutes: habitEntity.totalMinutesSpent())
                    
                    if addingTime{
                        TimeConfigurationView(selectedMinutes: $selectedMinutes, selectedDate: $selectedDate)
                    }
                    
                    StandardButtonView(title: addingTime ? "Valider" : "Ajouter du temps", color: addingTime ? .green : .blue, action: {
                        withAnimation {
                            addingTime ? addNewtime() : toggleEdition()
                        }
                    })
                    
                    ForEach(habitEntity.spentTimes()){  time in
                        TimeCellView(spentTime: time)
                            .padding()
                        Divider()
                            .frame(width: 380)
                    }
                    
                    StandardButtonView(title: "Supprimer une habitude", color: .red, action: {
                        viewContext.delete(habitEntity)
                        
                        do{
                            try viewContext.save()
                            self.presentationMode.wrappedValue.dismiss()
                        }catch{
                            print(error.localizedDescription)
                        }
                        
                    })
                    
                }
            }
        }
    }
    private func addNewtime(){
        habitLibrary.objectWillChange.send()
        
        let newTimeSlot = SpentTimeEntity(context: viewContext)
        newTimeSlot.id = UUID()
        newTimeSlot.date = selectedDate
        newTimeSlot.minutes = Int64(selectedMinutes)
        habitEntity.addToTimeSlots(newTimeSlot)
        
        do {
            try viewContext.save()
        }catch{
            print("Erreur lors de l'enregristrement")
        }
        
        toggleEdition()
    }
    private func toggleEdition(){
        addingTime.toggle()
    }
}

struct DetailsView_Previews: PreviewProvider {
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
            DetailsView(habitEntity: habitEntity)
        
    }
}

