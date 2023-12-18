//
//  CategoryHome.swift
//  Landmarks
//
//  Created by Bugra Aslan on 18.12.2023.
//

import SwiftUI

struct CategoryHome: View {
    var body: some View {
        NavigationSplitView {
            Test("Hello, World!")
                .navigationTitle("Featured")
        } detail {
            Text("Select a Landmark")
        }
    }
}


#Preview {
    CategoryHome()
}