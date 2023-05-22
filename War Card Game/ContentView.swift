//
//  ContentView.swift
//  War Card Game
//
//  Created by Sebastian Krzysiak on 5/22/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Image("background-plain")
            VStack{
                Spacer()
                Image("logo")
                Spacer()
                HStack{
                    Spacer()
                    Image("card2")
                    Spacer()
                    Image("card3")
                    Spacer()
                }
                Spacer()
                Image("button")
                Spacer()
                HStack {
                    Spacer()
                    VStack {
                        Text("Player")
                        Text("0")
                    }.foregroundColor(Color.white)
                    Spacer()
                    VStack {
                        Text("CPU")
                        Text("0")
                    }.foregroundColor(Color.white)
                    Spacer()
                }
                Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
