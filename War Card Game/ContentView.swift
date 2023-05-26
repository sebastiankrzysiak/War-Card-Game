//
//  ContentView.swift
//  War Card Game
//
//  Created by Sebastian Krzysiak on 5/22/23.
//

import SwiftUI

struct ContentView: View {
    
    @State var leftCard = "back"
    @State var rightCard = "back"
    
    @State var playerScroe = 0
    @State var cpuScore = 0
    @State var tieScore = 0
    
    var body: some View {
        
        ZStack{
            Image("background-plain")
                .resizable()
                .ignoresSafeArea()
            VStack{
                Spacer()
                Image("logo")
                Spacer()
                HStack{
                    Spacer()
                    Button {
                        if leftCard == "back" && rightCard == "back" {
                            leftdeal()
                        }
                        else {
                            next()
                        }
                    } label: {
                        Image(leftCard)
                    }
                    Spacer()
                    Button {
                        if leftCard == "back" && rightCard == "back" {
                            rightdeal()
                        }
                        else {
                            next()
                        }
                    } label: {
                        Image(rightCard)
                    }
                    Spacer()
                }
                Spacer()
                HStack {
                    Spacer()
                    VStack {
                        Text("Player")
                            .font(.headline)
                            .padding(.bottom, 10.0)
                        Text(String(playerScroe))
                            .font(.largeTitle)
                    }
                    Spacer()
                    VStack {
                        Text("Tie")
                            .font(.headline)
                            .padding(.bottom, 10.0)
                        Text(String(tieScore))
                            .font(.largeTitle)
                    }
                    Spacer()
                    VStack {
                        Text("CPU")
                            .font(.headline)
                            .padding(.bottom, 10.0)
                        Text(String(cpuScore))
                            .font(.largeTitle)
                    }
                    Spacer()
                }
                .foregroundColor(Color.white)
                
                Spacer()
                
                Button("Reset Score") {
                    reset()
                }
                .foregroundColor(.white)
                .buttonStyle(.bordered)
            }
        }
    }
    
    func leftdeal() {
        // Randomize the playes card
        var playerCardValue = Int.random(in: 2...14)
        leftCard = "card" + String(playerCardValue)
        // Randomize the cpus card
        var cpuCardValue = Int.random(in: 2...14)
        rightCard = "card" + String(cpuCardValue)
        // Update the score
        if playerCardValue > cpuCardValue {
            // Add 1 to player score
            playerScroe += 1
        }
        else if playerCardValue < cpuCardValue {
            // Add 1 to cpu score
            cpuScore += 1
        }
        else {
            tieScore += 1
        }
    }
    
    func rightdeal() {
        // Randomize the playes card
        var playerCardValue = Int.random(in: 2...14)
        rightCard = "card" + String(playerCardValue)
        // Randomize the cpus card
        var cpuCardValue = Int.random(in: 2...14)
        leftCard = "card" + String(cpuCardValue)
        // Update the score
        if playerCardValue > cpuCardValue {
            // Add 1 to player score
            playerScroe += 1
        }
        else if playerCardValue < cpuCardValue {
            // Add 1 to cpu score
            cpuScore += 1
        }
        else {
            tieScore += 1
        }
    }
    
    func reset() {
        playerScroe = 0
        cpuScore = 0
        tieScore = 0
        leftCard = "back"
        rightCard = "back"
    }
    
    func next() {
        leftCard = "back"
        rightCard = "back"
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
