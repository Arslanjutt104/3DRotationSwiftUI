//
//  ContentView.swift
//  Image3DRotation
//
//  Created by Mac on 29/08/2023.
//

import SwiftUI

struct ContentView: View {
    
    @State var animate:Bool = false
    
    var body: some View {
        
        VStack(spacing: 20) {
            
            Image("AppleIcon")
                .resizable()
                .imageScale(.large)
                .frame(width: 200,  height: 200)
                .clipShape(Circle())
                .overlay(content: {
                    Circle().stroke(.white, lineWidth:2)
                })
                .shadow(radius: 20)
                .rotation3DEffect(Angle(degrees: animate ? 180 : 0), axis: (x:0.0, y: 1.0, z: 0.0))
                .onTapGesture {
                    withAnimation(
                        .interpolatingSpring(stiffness: 30, damping: 3)){
                            animate.toggle()
                        }
                }
            Text("Hello, Developer!")
            
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
