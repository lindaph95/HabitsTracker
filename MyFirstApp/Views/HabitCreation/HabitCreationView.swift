//
//  HabitCreationView.swift
//  MyFirstApp
//
//  Created by Linda Phan on 20/11/2020.
//

import SwiftUI

struct HabitCreationView: View {
    
    @State var habitConfig = NewHabitConfig()
    
    @ObservedObject var habitLibrary: HabitLibrary
    
    
    @Environment(\.presentationMode) var presentationMode
    
    @Environment(\.managedObjectContext) var viewContext
    
    var body: some View {
        NavigationView{
            ScrollView{
                VStack {
                    TextField("Habit name", text: $habitConfig.name)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    TextEditor(text: $habitConfig.description)
                        .border(Color.gray, width: 1)
                        .frame(height: 150)
                }.padding(6)
                CoverSelectionView(selectedURL: $habitConfig.imageURL)
            }.navigationTitle(Text("Nouvelle habitude"))
            
            .navigationBarItems(leading: Button(action: {
                presentationMode.wrappedValue.dismiss()
            }, label: {
                Text("Annuler")
                
            }), trailing: Button(action: {
                
                let newHabit = HabitEntity(context: viewContext)
                
                newHabit.id = UUID()
                newHabit.imageURL = habitConfig.imageURL
                newHabit.name = habitConfig.name
                newHabit.stringDescription = habitConfig.description
                newHabit.isFavourite = false
                
                do{
                    try viewContext.save()
                }catch{
                    print("Erreur lors de l'enregistrement")
                }
                
                presentationMode.wrappedValue.dismiss()
            }, label: {
                Text("Valider")
            }))
                
           
        }
    }
}

struct HabitCreationView_Previews: PreviewProvider {
    @StateObject static var habitLibrary = HabitLibrary()
    static var previews: some View {
        HabitCreationView(habitLibrary: habitLibrary)
    }
}
