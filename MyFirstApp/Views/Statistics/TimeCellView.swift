//
//  TimeCellView.swift
//  MyFirstApp
//
//  Created by Phan Linda on 12/04/2021.
//

import SwiftUI

struct TimeCellView: View {
    
    let spentTime: SpentTimeEntity
    
    var body: some View {
        HStack{
            Text("\(spentTime.minutes) min")
            Spacer()
            Text(stringDate(date: spentTime.date))
        }
    }
    private func stringDate(date: Date) -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = " dd MMM yyyy"
        return formatter.string(from: date)
    }
}

struct TimeCellView_Previews: PreviewProvider {
    static private let persistentController = PersistenceController.preview
    static private let time: SpentTimeEntity = {
        let timeEntity = SpentTimeEntity(context: persistentController.container.viewContext)
        timeEntity.id = UUID()
        timeEntity.minutes = 36
        timeEntity.date = Date()
        return timeEntity
    }()
    
    static var previews: some View {
        TimeCellView(spentTime: time)
    }
}
