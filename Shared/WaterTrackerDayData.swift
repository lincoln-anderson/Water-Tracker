//
//  WaterTrackerData.swift
//  Water Tracker
//
//  Created by lincoln anderson on 7/1/20.
//

import Foundation
import SwiftUI


struct WaterTrackerDayData: Identifiable {
    let id = UUID()
    let goal: Int
    let progress: Int
    let data: [Float32] = []
    let entryCounter = 0
    let date: Date
}
