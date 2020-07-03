//
//  WaterTrackerData.swift
//  Water Tracker
//
//  Created by lincoln anderson on 7/1/20.
//

import Foundation

class WaterTrackerDayDataStore: ObservableObject {
    init() {}

    var exampleDays = [
        
        WaterTrackerDayData(goal: "128"),
        WaterTrackerDayData(goal: "100")
        
        
    ]
    
    var days: [WaterTrackerDayData] = []
    
    func AddDay(addedDay: WaterTrackerDayData) {
        
        days.append(addedDay)
        
        
    }
    
    
}

struct WaterTrackerDayData: Identifiable {
    let id = UUID()
    let goal: String
    let goalProgress = 0
    let data: [Float32] = []
    let entryCounter = 0
}
