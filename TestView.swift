//
//  TestView.swift
//  MyFirstApp
//
//  Created by Linda Phan on 11/11/2020.
//

import SwiftUI

struct TestView: View {
   
    let sections: [MenuSection] = [
        MenuSection(name: "Voyage", items: [
            MenuItem(name: "🛃 Passeport"),
            MenuItem(name: "🦷 Brosse à dent"),
            MenuItem(name: "👕 Tee shirt")
        ]),
        MenuSection(name: "Nourriture", items: [
            MenuItem(name: "🥖 Pain"),
            MenuItem(name: "🍏 Fruits"),
            MenuItem(name: "🍴 Couverts")
        ]),
        
    ]

    var body: some View {
        List{
            ForEach(sections){ section in
                Section(header: Text(section.name)){
                    ForEach(section.items){ item in
                        Text(item.name)
                    }
                }
            }
        }.listStyle(GroupedListStyle())
    }
}

struct TestView_Previews: PreviewProvider {
    static var previews: some View {
        TestView()
    }
}
