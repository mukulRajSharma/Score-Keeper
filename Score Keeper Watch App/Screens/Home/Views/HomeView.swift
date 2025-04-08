//
//  Home.swift
//  Score Keeper
//
//  Created by Mukul Sharma on 8/4/2025.
//
import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationStack {
            Text("Sport:")
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading)
                .foregroundColor(Color.red)
            List {
                NavigationLink("Tennis", value: "tennis")
                NavigationLink("Badminton", value: "badminton")
                NavigationLink("Other", value: "other")
            }
            .navigationDestination(for: String.self) { selection in
                ScoreView(sport: selection)
            }
        }
    }
}
#Preview {
    ContentView()
}
