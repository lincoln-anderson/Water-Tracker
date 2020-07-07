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
                List {
                    
                    ForEach(store.days) { day in
                        GoalRowView(goal: day.goal, progress: day.progress, date: day.date)
                    }
                    .onDelete(perform: deleteDays)
                    
                    HStack {
                        
                        Spacer()
                        Text("\(store.days.count) days logged")
                            .foregroundColor(.secondary)
                        Spacer()
                        
                    }
                    
                }
                .navigationTitle("Days Logged")
                .toolbar {
                    Spacer()
                    #if os(iOS)
                    EditButton()
                    #endif
                    Spacer()
                    
                    Button("Add", action: makeNewDay)
                    Spacer()
                }
                
                
                
            }
        }
    
    func makeNewDay() {
        withAnimation {
            
            store.days.append(WaterTrackerDayData(goal: 120, progress: 68, date: Date()))
            
        }
    }
    func deleteDays(offsets: IndexSet) {
        
        withAnimation {
            
            store.days.remove(atOffsets: offsets)
            
        }
        
    }
    
    
}

    

struct homeScreen_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            HomeScreen(store: testStore)
                .preferredColorScheme(.dark)
            HomeScreen(store: testStore)
        }
    }
}
