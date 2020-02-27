//
//  SpinnerUI.swift
//  MSAL
//
//  Created by Travis Brigman on 2/23/20.
//

import SwiftUI


@available(iOS 13.0, *)
struct SpinnerUI: View {
    @State var animate = false
    var body: some View {
        VStack {
                Circle()
                    .trim(from: 0, to: 0.8)
                    .stroke(AngularGradient(gradient: .init(colors: [.blue, .white]), center: .center), style: StrokeStyle(lineWidth: 8, lineCap: .round))
                    .frame(width: 45, height: 45)
                    .rotationEffect(.init(degrees: self.animate ? 360 : 0))
                    .animation(Animation.linear(duration: 0.7).repeatForever(autoreverses: false))
            }
        .onAppear(){
            self.animate.toggle()
        }
        }
    }


@available(iOS 13.0.0, *)
struct SpinnerUI_Previews: PreviewProvider {
    static var previews: some View {
        SpinnerUI()
    }
}
