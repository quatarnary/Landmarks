//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Bugra Aslan on 16.12.2023.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        NavigationSplitView {
            List(landmarks) { landmark in
                NavigationLink {
                    LandmarkDetail(landmark: landmark)
                } label: {
                    LandmarkRow(landmark: landmark)
                }
            }
            .navigationTitle("Landmarks")
        } detail: {
            ZStack {
                Image("ink-background-texture")
                    .resizable()
                    .scaledToFill()
                    .blur(radius: 10.0)
                    .edgesIgnoringSafeArea(.all)
                
                Color.black.opacity(0.6)
                    .edgesIgnoringSafeArea(.all)
                
                Text("Select a Landmark")
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .foregroundColor(.white)
                    .shadow(color: .black.opacity(0.8), radius: 5, x: 0, y: 2)
                    .padding()
                    .background(Color.black.opacity(0.5).cornerRadius(10))
                    .padding()
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
        }
    }
}

#Preview {
    LandmarkList()
}
