//
//  ContentView.swift
//  RemindersApp
//
//  Created by Benjamin Lavallee on 2023-11-03.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color.white
                .ignoresSafeArea()
            NavigationStack {
                List {
                    Group{
                        
                        ReminderView(reminder:"Call auto body shop", reminderColor: .black, reminderDate: "2023-11-16",reminderDateColor: .gray)
                            .listRowSeparator(.hidden, edges: .top)
                        ReminderView(reminder:"Feed Piper", reminderColor: .black, reminderDate: "Tomorrow, 8:00 AM, Daily",reminderDateColor: .gray)
                        ReminderView(reminder:"Write lesson about interactive apps", reminderColor: .black, reminderDate: "Tomorrow, 6:00 PM",reminderDateColor: .gray)
                        ReminderView(reminder:"Take Piper to the vet", reminderColor: .black, reminderDate: "2023-11-29, 3:00 PM",reminderDateColor: .gray)
                        ReminderView(reminder:"Drop off donations at Goodwill", reminderColor: .black, reminderDate: "2023-11-11",reminderDateColor: .gray)
                        ReminderView(reminder:"Call plumber about clog in sink", reminderColor: .black, reminderDate: "Tomorrow, 2:00 PM",reminderDateColor: .gray)
                        ReminderView(reminder:"Call dentist to schedule appointment", reminderColor: .black, reminderDate: "2023-11-06, 4:00 PM",reminderDateColor: .gray)
                        ReminderView(reminder:"Call mechanic to get TARDIS repaired", reminderColor: .black, reminderDate: "Tomorrow, 12:00 PM",reminderDateColor: .gray)
                    }
                }
                .font(.system(size: 20,design: .rounded))
                .listStyle(.plain)
                .navigationTitle("To Do")
                .padding(.vertical, 20)
                .toolbar {
                    ToolbarItem(placement: .topBarLeading) {
                        Button(action: {}) {
                            Image(systemName: "backIndicatorImage")
                            Text("Lists")
                        }
                    }
                    ToolbarItem(placement: .topBarTrailing) {
                        Button(action: {}) {
                            HStack {
                                Image(systemName: "square.and.arrow.up")
                                Image(systemName: "ellipsis.circle")
                            }
                        }
                    }
                }
            }
            .font(.title)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
