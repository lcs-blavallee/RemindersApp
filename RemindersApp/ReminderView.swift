//
//  ReminderView.swift
//  RemindersApp
//
//  Created by Benjamin Lavallee on 2023-11-05.
//

import SwiftUI

struct ReminderView: View {
    
    //MARK: Stored properties
    let reminder: String
    let reminderColor: Color
    let reminderDate: String
    let reminderDateColor: Color
    
    //MARK: Computed properties
    
    // Returns the button's user interface...
    var body: some View {
        VStack (alignment: .leading) {
            
            // First layer
            Text(reminder)
                .foregroundStyle(reminderColor)
            Text(reminderDate)
                .foregroundStyle(reminderDateColor)
            
        }
    }
}

#Preview {
    ReminderView(reminder:"Call auto body shop", reminderColor: .black, reminderDate: "2023-11-16",reminderDateColor: .gray )
}

