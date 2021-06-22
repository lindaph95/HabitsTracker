//
//  menuItem.swift
//  MyFirstApp
//
//  Created by Linda Phan on 11/11/2020.
//

import Foundation

struct MenuItem: Identifiable {
    let id = UUID().uuidString
    let name: String
    
}

struct MenuSection: Identifiable {
    let id = UUID().uuidString
    let name: String
    let items: [MenuItem]
}
