//
//  ScoreView.swift
//  Score Keeper
//
//  Created by Mukul Sharma on 8/4/2025.
//
import SwiftUI

struct ScoreView: View {
    var sport: String
    
    @AppStorage("counterOne") private var counterOne = 0
    @AppStorage("counterTwo") private var counterTwo = 0
    var minValue: Int {
        return 0
    }
    var maxValue: Int {
        switch sport {
            case "tennis":
                return 1000
            case "badminton":
               return 21
            default:
                return 100
        }
    }
    var increment: Int {
        switch sport {
            case "tennis":
                return 15
            case "badminton":
                return 1
            default:
                return 1
        }
    }
    
    init(sport: String, counterOne: Int = 0, counterTwo: Int = 0) {
        self.sport = sport
        self.counterOne = counterOne
        self.counterTwo = counterTwo
    }
    
    var body: some View {
        VStack (spacing: 10) {
            ResetButton(counterOne: $counterOne, counterTwo: $counterTwo)
            HStack (spacing: 15){
                Counter(counter: $counterOne, minValue: minValue, maxValue: maxValue, increment: increment)
                Counter(counter: $counterTwo, minValue: minValue, maxValue: maxValue, increment: increment)
            }
            .padding()
            .frame(minHeight: 150)
        }
    }
}
