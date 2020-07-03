//
//  Water_TrackerApp.swift
//  Shared
//
//  Created by lincoln anderson on 7/1/20.
//

import SwiftUI

@main
struct Water_TrackerApp: App {
    
    @StateObject private var store = WaterTrackerDayDataStore()
    
    var body: some Scene {
        WindowGroup {
            HomeScreen(store: store)
        }
    }
}
