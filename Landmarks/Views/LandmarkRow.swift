    //
    //  LandmarkRow.swift
    //  Landmarks
    //
    //  Created by Bugra Aslan on 16.12.2023.
    //

import SwiftUI

struct LandmarkRow: View {
    var landmark: Landmark
    
    var body: some View {
        HStack {
            landmark.image
                .resizable()
                .frame(width: 50, height: 50)
            Text(landmark.name)
            
            Spacer()
        }
    }
}

#Preview("One Item") {
    LandmarkRow(landmark: landmarks[0])
}

#Preview("Two Item") {
    Group {
        LandmarkRow(landmark: landmarks[0])
        LandmarkRow(landmark: landmarks[1])
    }
}
