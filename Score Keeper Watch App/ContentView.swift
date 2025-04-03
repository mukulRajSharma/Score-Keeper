//
//  ContentView.swift
//  Score Keeper Watch App
//
//  Created by Mukul Sharma on 3/4/2025.
//

import SwiftUI

//@main
struct ContentView: View {
    @AppStorage("counterOne") private var counterOne = 0
    @AppStorage("counterTwo") private var counterTwo = 0

    var body: some View {
        HStack {
            VStack(spacing:5) {
                Button(action: { counterOne += 1 }) {
                    Image(systemName: "plus")
                        .scaleEffect(1)
                        .foregroundColor(.green)
                }
                // Display the counter value
                Text("\(counterOne)")
                    .font(.system(size: 50, design: .rounded))
                // Decrement Counter
                Button(action: { counterOne -= 1 }) {
                    Image(systemName: "minus")
                        .scaleEffect(1)
                        .foregroundColor(.red)
                }
                
            }
            .padding(.top, 20)
            
            VStack(spacing:5) {
                Button(action: { counterTwo += 1 }) {
                    Image(systemName: "plus")
                        .scaleEffect(1)
                        .foregroundColor(.green)
                }
                // Display the counter value
                Text("\(counterTwo)")
                    .font(.system(size: 50, design: .rounded))
                // Decrement Counter
                Button(action: { counterTwo -= 1 }) {
                    Image(systemName: "minus")
                        .scaleEffect(1)
                        .foregroundColor(.red)
                }
                
            }
            .padding(.top, 20)
        }
        .padding()
            
    }

}

#Preview {
    ContentView()
}


