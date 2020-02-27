//
//  tabBar.swift
//  OneDriveCam
//
//  Created by Travis Brigman on 2/9/20.
//  Copyright © 2020 Travis Brigman. All rights reserved.
//

import SwiftUI

struct tabBar: View {
        @ObservedObject var viewRouter = ViewRouter()
    var body: some View {
        GeometryReader { geometry in
            VStack {
                Spacer()
                Text("Home")
                Spacer()
                HStack {
                    Image(systemName: "house")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .padding(20)
                        .frame(width: geometry.size.width/3, height: 75)
                    
                    ZStack {
                        Circle()
                            .foregroundColor(Color.white)
                            .frame(width: 75, height: 75)
                        Image(systemName: "largecircle.fill.circle")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 75, height: 75)
                            .foregroundColor(.blue)
                    }.offset(y: -geometry.size.height/10/2)
                    Image(systemName: "gear")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .padding(20)
                        .frame(width: geometry.size.width/3, height: 75)
                }
                .frame(width: geometry.size.width, height: geometry.size.height/10)
                .background(Color.white.shadow(radius:2))
            }.edgesIgnoringSafeArea(.bottom)
        }
    }
}

struct tabBar_Previews: PreviewProvider {
    static var previews: some View {
        tabBar()
    }
}
