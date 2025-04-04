//
//  ContentView.swift
//  Score Keeper Watch App
//
//  Created by Mukul Sharma on 3/4/2025.
//

import SwiftUI

struct ResetButton: View {
    @Binding var counterOne: Int
    @Binding var counterTwo: Int
    @State private var rotate = false
    
    var body: some View {
        Button{
            counterOne = 0
            counterTwo = 0
            rotate.toggle()
        } label: {
            Label("", systemImage: "arrow.counterclockwise")
        }
        .foregroundColor(.red)
        .scaleEffect(1.5)
        .symbolEffect(.rotate, value: rotate)
        .buttonStyle(.plain)
        .frame(width: 75)
    }
}
//@main
struct ContentView: View {
    @AppStorage("counterOne") private var counterOne = 0
    @AppStorage("counterTwo") private var counterTwo = 0
    let minValue = 0
    let maxValue = 21
    
    var body: some View {
        VStack (spacing: 10) {
            ResetButton(counterOne: $counterOne, counterTwo: $counterTwo)
            HStack (spacing: 15){
                Counter(counter: $counterOne, minValue: minValue, maxValue: maxValue)
                Counter(counter: $counterTwo, minValue: minValue, maxValue: maxValue)
            }
            .padding()
            .frame(minHeight: 150)
        }
        
            
    }

}

#Preview {
    ContentView()
}


