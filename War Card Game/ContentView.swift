//
//  ContentView.swift
//  War Card Game
//
//  Created by Sebastian Krzysiak on 5/22/23.
//

import SwiftUI

struct ContentView: View {
    
    @State var playerCard = "card7"
    @State var cpuCard = "card13"
    
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
                    Image(playerCard)
                    Spacer()
                    Image(cpuCard)
                    Spacer()
                }
                Spacer()
                
                Button {
                    deal()
                } label: {
                    Image("button")
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
                
                Button("Reset") {
                    reset()
                }
                .foregroundColor(Color.white)
            }
        }
    }
    
    func deal() {
        // Randomize the playes card
        var playerCardValue = Int.random(in: 2...14)
        playerCard = "card" + String(playerCardValue)
        // Randomize the cpus card
        var cpuCardValue = Int.random(in: 2...14)
        cpuCard = "card" + String(cpuCardValue)
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
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
