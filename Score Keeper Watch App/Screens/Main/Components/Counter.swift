//
//  Counter.swift
//  Score Keeper
//
//  Created by Mukul Sharma on 4/4/2025.
//

import SwiftUI

struct Counter: View {
    @Binding var counter: Int
    let minValue: Int
    let maxValue: Int
    var increment: Int
    
    var body: some View {
        VStack (spacing:25) {
            Button(action: { counter += increment }) {
                Image(systemName: "plus")
                    .scaleEffect(1)
                    .foregroundColor(.green)
            }
            .disabled(counter == maxValue)
            .frame(width: 75, height: 5)

            Text("\(counter)")
                .font(.system(size: 30, design: .rounded))

            Button(action: { counter -= increment }) {
                Image(systemName: "minus")
                    .scaleEffect(1)
                    .foregroundColor(.red)
            }
            .disabled(counter == minValue)
            .frame(width: 75, height: 5)
        }
    }
    
}

#Preview {
    ContentView()
}

