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
            
            VStack {
                HStack {
                    Spacer()
                    TextField("Enter Goal", text: $localGoal)
                    Spacer()
                }
                
                Button("Add Goal", action: {
                    
                    
                    let newDay = WaterTrackerDayData(goal: localGoal)
                    
                    store.days.append(newDay)
                    
                })
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
