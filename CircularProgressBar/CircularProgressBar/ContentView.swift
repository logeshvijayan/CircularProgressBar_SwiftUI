//
//  ContentView.swift
//  CircularProgressBar
//
//  Created by Logesh Vijayan on 2022-01-27.
//

import SwiftUI

struct ContentView: View {
    
    @State private var sliderValue: Float = 0.0
    
    var body: some View {

        ZStack {
            Color.yellow
                .opacity(0.2)
                .edgesIgnoringSafeArea(.all)
           VStack() {
               ProgressBarView(progress: $sliderValue)
                    .frame(width: 150, height: 150)
                    .padding(.bottom, 30)
               
                Slider(value: $sliderValue, in: 0...100)
                    .padding(.leading, 30)
                    .padding(.trailing, 30)

                
          }

        }
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
