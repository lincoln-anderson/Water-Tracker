//
//  AddGoalView.swift
//  Water Tracker
//
//  Created by lincoln anderson on 7/3/20.
//

import SwiftUI

struct AddGoalView: View {
    
    @ObservedObject var store: WaterTrackerDayDataStore
    
    @State var localGoal: String = ""
    
    
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

struct AddGoalView_Previews: PreviewProvider {
    static var previews: some View {
        AddGoalView(store: WaterTrackerDayDataStore())
    }
}
