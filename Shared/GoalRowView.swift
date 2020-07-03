//
//  GoalRowView.swift
//  Water Tracker
//
//  Created by lincoln anderson on 7/3/20.
//

import SwiftUI

struct GoalRowView: View {

    var goal: Int

    var body: some View {
        Text(String(goal))
    }
}

struct GoalRowView_Previews: PreviewProvider {
    static var previews: some View {
        GoalRowView(goal: 11)
    }
}
