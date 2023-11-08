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
                VStack (spacing: 2) {
                    HStack {
                        Text("To do")
                            .font(.system(size: 35,design: .rounded))
                            .foregroundStyle(Color.blue)
                            .bold()
                            .padding(.leading, 20)
                        
                        
                        Spacer()
                    }
                    
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
                    
                    .font(.system(size: 18,design: .rounded))
                    .listStyle(.plain)
                    .padding(.vertical, 0)
                    .toolbar {
                        ToolbarItem(placement: .topBarLeading) {
                            VStack {
                                Spacer(minLength: 10)
                                Button(action: {}) {
                                    Image(systemName: "chevron.left")
                                        .resizable()
                                        .aspectRatio(contentMode: .fill)
                                        .frame(width: 10, height: 15)
                                    Text("Lists")
                                        .font(.system(size: 20,design: .rounded))
                                }
                            }
                        }
                        ToolbarItem(placement: .topBarTrailing) {
                            VStack {
                                Spacer(minLength: 10)
                                HStack {
                                    Button(action: {}) {
                                        Image(systemName: "square.and.arrow.up")
                                            .resizable()
                                            .aspectRatio(contentMode: .fill)
                                            .padding(.bottom, 5)
                                            .frame(width: 25)
                                    }
                                    Spacer(minLength: 25)
                                    Button(action: {}) {
                                        Image(systemName: "ellipsis.circle")
                                            .resizable()
                                            .aspectRatio(contentMode: .fill)
                                            .frame(width: 30)
                                    }
                                }
                            }
                        }
                    }
                    VStack {
                        
                        HStack  {
                            Group {
                                Image(systemName: "plus.circle.fill")
                                    .foregroundStyle(Color.blue)
                                    .padding(.leading, 20)
                                Text("New Reminder")
                                    .font(.system(size: 20,design: .rounded))
                                    .foregroundStyle(Color.blue)
                                    .bold()
                            }
                            
                            Spacer()
                        }
                    }
                }
            }
            .font(.title)
        }
    }
}

#Preview {
    ContentView()
}
