//
//  ContentView.swift
//  AboutMe
//
//  Created by scholar on 8/10/23.
//

import SwiftUI

struct ContentView: View {
    @State private var TitleText = "About Me!"
    @State private var subText = "Meet Izabelle Celestino!"
    @State private var imageName = "Me"
    var body: some View {
        ZStack {
            Color(.systemBrown)
                .ignoresSafeArea()
            VStack {
                Text(TitleText)
                    .font(.system(.title, design: .monospaced))
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.center)
                
            Image(imageName)
                .resizable(resizingMode: .stretch)
                .aspectRatio(contentMode: .fit)
                .frame(width: 300.0)
                .cornerRadius(10)
                        .overlay(RoundedRectangle(cornerRadius: 10)
                            .stroke(Color.white, lineWidth: 4))
                        .shadow(radius: 10)
        
                Text(subText)
                    .font(.system(.title3, design: .rounded))
                    .foregroundColor(Color.white)
                    .fontWeight(.bold)
                Button("Click here!") {
                    TitleText = "I am 17 years old and will be a senior this year! I have a love for fitness and nature (except oceans), and I have three other siblings!"
                    subText = "Thank you for listening!"
                    self.imageName = "forest"
                }
                .font(.title2)
                .buttonStyle(.borderedProminent)
                .tint(.black)
            }
            .padding()
        }
    }
    
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
