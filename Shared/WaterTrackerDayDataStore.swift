//
//  WaterTrackerDayDataStore.swift
//  Water Tracker
//
//  Created by lincoln anderson on 7/3/20.
//

import Foundation
import SwiftUI

class WaterTrackerDayDataStore: ObservableObject {
    init() {}

    var exampleDays = [
        
        WaterTrackerDayData(goal: 128),
        WaterTrackerDayData(goal: 100)
        
        
    ]
    
    @Published var days: [WaterTrackerDayData] = [
        WaterTrackerDayData(goal: 128),
        WaterTrackerDayData(goal: 100)
    
    ]
    
    
}
