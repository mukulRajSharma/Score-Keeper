//
//  ContentView.swift
//  Score Keeper Watch App
//
//  Created by Mukul Sharma on 3/4/2025.
//

import SwiftUI


struct Counter: View {
    @State var counter: Int
    let minValue: Int
    let maxValue: Int
    
    var body: some View {
        VStack(spacing:5) {
            Button(action: { counter += 1 }) {
                Image(systemName: "plus")
                    .scaleEffect(1)
                    .foregroundColor(.green)
            }
            .disabled(counter == maxValue)
            // Display the counter value
            Text("\(counter)")
                .font(.system(size: 50, design: .rounded))
            // Decrement Counter
            Button(action: { counter -= 1 }) {
                Image(systemName: "minus")
                    .scaleEffect(1)
                    .foregroundColor(.red)
            }
            .disabled(counter == minValue)
            
        }
        .padding(.top, 20)
    }
    
}
//@main
struct ContentView: View {
    @AppStorage("counterOne") private var counterOne = 0
    @AppStorage("counterTwo") private var counterTwo = 0
    let minValue = 0
    let maxValue = 21
    
    var body: some View {
        HStack {
            Counter(counter: counterOne, minValue: minValue, maxValue: maxValue)
            Counter(counter: counterTwo, minValue: minValue, maxValue: maxValue)
        }
        .padding()
            
    }

}

#Preview {
    ContentView()
}


