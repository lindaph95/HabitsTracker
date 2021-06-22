//
//  Data.swift
//  MyFirstApp
//
//  Created by Linda Phan on 12/11/2020.
//

import Foundation

class HabitLibrary: ObservableObject {
    @Published var testHabits = [
        Habit(imageURL: URL(string: "https://images.pexels.com/photos/4048182/pexels-photo-4048182.jpeg?auto=compress&cs=tinysrgb&h=750&w=1260"), name: "Running",  isFavourite: false, description: "Le Lorem Ipsum est simplement du faux texte employé dans la composition et la mise en page avant impression. Le Lorem Ipsum est le faux texte standard de l'imprimerie depuis les années 1500, quand un imprimeur anonyme assembla ensemble des morceaux de texte pour réaliser un livre spécimen de polices de texte"),
        Habit(imageURL: URL(string: "https://images.pexels.com/photos/574071/pexels-photo-574071.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"), name: "Coding", isFavourite: true, description: "Le Lorem Ipsum est simplement du faux texte employé dans la composition et la mise en page avant impression. Le Lorem Ipsum est le faux texte standard de l'imprimerie depuis les années 1500, quand un imprimeur anonyme assembla ensemble des morceaux de texte pour réaliser un livre spécimen de polices de texte"),
        Habit(imageURL: URL(string: "https://images.pexels.com/photos/2228561/pexels-photo-2228561.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"), name: "Reading",  isFavourite: false, description: "Le Lorem Ipsum est simplement du faux texte employé dans la composition et la mise en page avant impression. Le Lorem Ipsum est le faux texte standard de l'imprimerie depuis les années 1500, quand un imprimeur anonyme assembla ensemble des morceaux de texte pour réaliser un livre spécimen de polices de texte")
    ]
}



let listOfUrl = [
    URL(string: "https://images.pexels.com/photos/3771069/pexels-photo-3771069.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940"),
    URL(string: "https://images.pexels.com/photos/267350/pexels-photo-267350.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940"),
    URL(string: "https://images.pexels.com/photos/4108715/pexels-photo-4108715.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940"),
    URL(string: "https://images.pexels.com/photos/545058/pexels-photo-545058.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940"),
    URL(string: "https://images.pexels.com/photos/442576/pexels-photo-442576.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940"),
    URL(string: "https://images.pexels.com/photos/1701208/pexels-photo-1701208.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940"),
    URL(string: "https://images.pexels.com/photos/3823086/pexels-photo-3823086.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940"),
    URL(string: "https://images.pexels.com/photos/4503269/pexels-photo-4503269.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940"),
    URL(string: "https://images.pexels.com/photos/1289118/pexels-photo-1289118.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940"),
    URL(string: "https://images.pexels.com/photos/4009401/pexels-photo-4009401.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940"),
    URL(string: "https://images.pexels.com/photos/3786522/pexels-photo-3786522.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940"),
    URL(string: "https://images.pexels.com/photos/291762/pexels-photo-291762.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940"),
    URL(string: "https://images.pexels.com/photos/1148998/pexels-photo-1148998.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940"),
    URL(string: "https://images.pexels.com/photos/3597335/pexels-photo-3597335.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940"),
    URL(string: "https://images.pexels.com/photos/2531728/pexels-photo-2531728.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940")
]
