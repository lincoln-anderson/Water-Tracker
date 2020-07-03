//
//  ContentView.swift
//  Shared
//
//  Created by lincoln anderson on 7/1/20.
//

import SwiftUI

struct HomeScreen: View {
    
    @ObservedObject var store: WaterTrackerDayDataStore
    @State var showAddSheet = false

        var body: some View {
            NavigationView {
                List(store.exampleDays) { day in
                    
                    Text(day.goal)
                    
                    
                }
                .navigationTitle("Water Goals")
                
                .navigationBarItems(trailing: Button(action: {
                    
                    self.showAddSheet.toggle()
                    
                }, label: {
                    Image(systemName: "plus")
                })).sheet(isPresented: $showAddSheet) {
                    AddGoalView(store: store, isPresented: self.$showAddSheet)
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
