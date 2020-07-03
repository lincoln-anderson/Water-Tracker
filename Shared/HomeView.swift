//
//  ContentView.swift
//  Shared
//
//  Created by lincoln anderson on 7/1/20.
//

import SwiftUI

struct HomeScreen: View {
    
    @ObservedObject var store: WaterTrackerDayDataStore
    @State private var localGoal = ""

        var body: some View {
            NavigationView {
                List(store.exampleDays) { day in
                    
                    Text(day.goal)
                    
                    
                }
            
            }
        }
    }

    

struct homeScreen_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            HomeScreen(store: WaterTrackerDayDataStore())
                .preferredColorScheme(.dark)
            HomeScreen(store: WaterTrackerDayDataStore())
        }
    }
}
