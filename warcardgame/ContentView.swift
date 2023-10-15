//
//  ContentView.swift
//  warcardgame
//
//  Created by Advait Lanjekar on 14/10/23.
//

import SwiftUI

struct ContentView: View {
    
    @State var playercard = "back"
    @State var cpucard = "back"
    
    @State var playerscore = 0
    @State var cpuscore = 0
    
    var body: some View {
        
        ZStack {
            
            Image("background-wood-grain")
                .resizable()
                .ignoresSafeArea()
            
            VStack {
                Spacer()
                Image("logo")
                Spacer()
                
                HStack{
                    Spacer()
                    Image(playercard)
                    Spacer()
                    Image(cpucard)
                    Spacer()
                }
                Spacer()
                
                Button {
                    deal()
                } label: {
                    Image("button")
                }

                
                Spacer()
                HStack{
                    Spacer()
                    VStack{
                        Text("Player")
                            .font(.headline)
                            .padding(.bottom, 10.0)
                        Text(String(playerscore))
                            .font(.largeTitle)
                    }
                    Spacer()
                    VStack{
                        Text("CPU")
                            .font(.headline)
                            .padding(.bottom, 10.0)
                        Text(String(cpuscore))
                            .font(.largeTitle)
                    }
                    Spacer()
                }
                .foregroundStyle(.white)
                Spacer()
            }
        }
    }
    func deal(){
        // Randomise player card
        var randomplayer = Int.random(in: 2...14)
        playercard = "card" + String(randomplayer)
        
        // Randomise cpu card
        var randomcpu = Int.random(in: 2...14)
        cpucard = "card" + String(randomcpu)
        
        //update the score
        if randomplayer > randomcpu {
            playerscore += 1
        }
        else if randomplayer < randomcpu {
            cpuscore += 1
        }
        else {
            
        }
    }
}

#Preview {
    ContentView()
}
