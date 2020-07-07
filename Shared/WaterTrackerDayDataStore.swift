//
//  WaterTrackerDayDataStore.swift
//  Water Tracker
//
//  Created by lincoln anderson on 7/3/20.
//

import Foundation
import SwiftUI

class WaterTrackerDayDataStore: ObservableObject {
    
    @Published var days: [WaterTrackerDayData]
    
    init(days: [WaterTrackerDayData] = [WaterTrackerDayData(goal: 120, progress: 64, date: Date())]) {
        
        self.days = days
        
    }
    
    
}

let testStore = WaterTrackerDayDataStore(days: testData)

let testData = [

    WaterTrackerDayData(goal: 120, progress: 40, date: Date()),
    WaterTrackerDayData(goal: 64, progress: 30, date: Date()),
    WaterTrackerDayData(goal: 130, progress: 25, date: Date())


]
