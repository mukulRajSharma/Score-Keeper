//
//  ContentView.swift
//  Score Keeper Watch App
//
//  Created by Mukul Sharma on 3/4/2025.
//

import SwiftUI

//@main
struct ContentView: View {
    @AppStorage("counterr") private var counter = 0 // Persistent storage for the counter
    

    var body: some View {
        HStack {
            VStack {
                Button(action: { counter += 1 }) {
                    Image(systemName: "plus")
                        .scaleEffect(1.5)
                        .foregroundColor(.green)
                }
                Text("\(counter)")
                    .font(.system(size: 72, design: .rounded))
                    .padding()

                HStack {
                    Button(action: { counter -= 1 }) {
                        Image(systemName: "minus")
                            .scaleEffect(1.5)
                            .foregroundColor(.red)
                    }
                }
                .padding()
            }
            VStack {
                // Display the counter value
                Text("\(counter)")
                    .font(.system(size: 72, design: .rounded))
                    .padding()

                HStack {

                    // Increment button
                    Button(action: { counter += 1 }) {
                        Image(systemName: "plus")
                            .scaleEffect(1.5)
                            .foregroundColor(.green)
                    }
                }
                .padding()
            }
        }
            
    }

}

#Preview {
    ContentView()
}


