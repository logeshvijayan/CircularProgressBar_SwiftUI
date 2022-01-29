//
//  ProgressBarView.swift
//  CircularProgressBar
//
//  Created by Logesh Vijayan on 2022-01-27.
//

import SwiftUI

struct ProgressBarView: View {
    
    @Binding var progress: Float
        
    var angles: [Angle] = [.degrees(90),.degrees(270),.degrees(360)]
    
    var body: some View {
        ZStack {
            Circle()
                .stroke(lineWidth: 20.0)
                .opacity(0.3)
                .foregroundColor(Color.red)
            Circle()
                .trim(from: 0, to: CGFloat(min(self.progress/100, 1.0)))
                .stroke(
                    AngularGradient(
                        gradient: .init(colors: [.green]),
                        center: .center,
                        startAngle: .degrees(0),
                        endAngle:  .degrees(360)
                    ),
                    style: StrokeStyle(lineWidth: 20, lineCap: .square))

                .rotationEffect(Angle(degrees: 270))
                .animation(.linear, value: 0.4)
                
            Text("\(Int(self.progress))%")
                .font(.system(size: 30, weight: .semibold, design: .rounded))
                .foregroundColor(.red)
            
        }
    }
}



