//
//  Test3View.swift
//  MyFirstApp
//
//  Created by Phan Linda on 02/12/2020.
//

import SwiftUI

struct Test3View: View {
    
    @StateObject var toDoList = ToDoList()
    
    var body: some View {
        VStack {
            ToDoListView(toDoList: toDoList)
            HStack {
                Button(action: {
                    if toDoList.items.count > 0 {
                        toDoList.items.removeLast()
                    }
                    
                }, label: {
                    Text("Supprimer")
                })
                Button(action: {
                    toDoList.items.append("Item n° \(toDoList.items.count + 1)")
                }, label: {
                    Text("Valider")
                })
            }
        }
    }
}

struct Test3View_Previews: PreviewProvider {
    static var previews: some View {
        Test3View()
    }
}

class ToDoList: ObservableObject {
    var publicationDate = Date()
    @Published var items: [String] = []
}

struct ToDoListView: View {
    
    @ObservedObject var toDoList: ToDoList
    
    var body: some View {
        VStack {
            ForEach(toDoList.items, id: \.self){ item in
                Text(item)
                    .padding()
            }
        }
    }
}
