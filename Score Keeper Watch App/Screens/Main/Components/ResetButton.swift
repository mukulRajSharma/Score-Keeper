//
//  ResetButton.swift
//  Score Keeper
//
//  Created by Mukul Sharma on 8/4/2025.
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
