//
//  ContentView.swift
//  Introduction Demo App
//
//  Created by rgs on 23/6/21.
//

import SwiftUI

struct ContentView: View {
    
    @State private var rotation: Angle = .zero
    @State private var fill: CGFloat = 0
    
    @Environment(\.openURL) var openURL
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [.purple, .blue]), startPoint: .top, endPoint: .bottom)
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Image("picture")
                    .resizable()
                    .frame(width: 300, height:  280)
                    .aspectRatio(contentMode: .fit)
                    .mask(Circle())
                
                Text("alyssa")
                    .fontWeight(.heavy)
                    .font(.largeTitle)
                    .foregroundColor(Color.white)
                    .underline(/*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/, color: Color.white)
                    .bold()
                    .padding(.all)
                
                Text("hello! im in rgs year 1 '21, like sleeping in, eating, coding, studying, and listening to music. practically a very boring person and always interested in trying new things and doing what makes me happy :] (i'm lazy to add in animations, so this is all i have (:)")
                    .background(Color.green)
                    .foregroundColor(Color.black)
                    .cornerRadius(10)
                    .padding()
                
                
                Button("my instagram 😄") {
                    openURL(URL(string: "https://instagram.com/alyssaayx")!)
                }
                .padding()
                .foregroundColor(Color.white)
                .background(Color.gray)
                .cornerRadius(10)
                
                Button("my 40h spotify playlist 😄") {
                    openURL(URL(string: "https://open.spotify.com/playlist/1Qs10D8H5LRitBIOAPPlj1?si=924678d61b444239")!)
                }
                .padding()
                .foregroundColor(Color.white)
                .background(Color.gray)
                .cornerRadius(10)
                .padding()

            
               
              
                
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
