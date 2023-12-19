//
//  ProfileEditor.swift
//  Landmarks
//
//  Created by Bugra Aslan on 19.12.2023.
//

import SwiftUI

struct ProfileEditor: View {
    @Binding var profile: Profile
    
    var dateRange: ClosedRange<Date> {
        let min = Calendar.current.date(byAdding: .year, value: -1, to: profile.goalDate)!
        let max = Calendar.current.date(byAdding: .year, value: 1, to: profile.goalDate)!
        return min...max
    }
    
    var body: some View {
        List {
            HStack {
                Text("Username")
                Spacer()
                TextField("Username", text: $profile.username)
                    .foregroundStyle(.secondary)
                    .multilineTextAlignment(.trailing)
            }
            
            Toggle(isOn: $profile.prefersNotifications, label: {
                Text("Enable Notifications")
            })
            
            Picker("Seasonal Photo", selection: $profile.seasonalPhoto, content: {
                ForEach(Profile.Season.allCases) { season in
                    Text(season.rawValue).tag(season)
                }
            })
            
            DatePicker("Goal Date", selection: $profile.goalDate, in: dateRange, displayedComponents: .date)
        }
    }
}

#Preview {
    ProfileEditor(profile: .constant(.default))
}
