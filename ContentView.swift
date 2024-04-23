//
//  ContentView.swift
//  cat age
//
//  Created by Mushik, Victoria on 4/01/24.
//

import SwiftUI

struct ContentView: View {
    @State private var catAge: String = ""
    @State private var humanAge: String = ""
    
    var body: some View {
        VStack {
            Text("How old is your cat")
                .font(.title)
                .padding()
            
            TextField("Enter cat's age", text: $catAge)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
                .keyboardType(.numberPad)
            
            Button(action: calculateHumanAge) {
                Text("Calculate")
                    .padding()
                    .foregroundColor(.white)
                    .background(Color.blue)
                    .cornerRadius(8)
            }
            .padding()
            
            if !humanAge.isEmpty {
                Text("Your cat's age in human years is \(humanAge)")
                    .padding()
            }
            
            Spacer()
        }
    }
    
    private func calculateHumanAge() {
        if let catYears = Int(catAge) {
            let humanYears: Int
            if catYears <= 2 {
                humanYears = (catYears * 7) + 1
            } else {
                humanYears = catYears * 7
            }
            humanAge = "\(humanYears)"
        } else {
            humanAge = "Invalid input"
        }
    }
}

#Preview {
    ContentView()
}
