//
//  SpentTime.swift
//  MyFirstApp
//
//  Created by Phan Linda on 12/01/2021.
//

import Foundation

struct SpentTime: Identifiable {
    let id = UUID().uuidString
    let minutes: Int
    let date: Date
    
}
