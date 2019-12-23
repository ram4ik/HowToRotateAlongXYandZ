//
//  ContentView.swift
//  HowToRotateAlongXYandZ
//
//  Created by ramil on 23.12.2019.
//  Copyright © 2019 com.ri. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var xAxisRotation = false
    @State private var yAxisRotation = false
    @State private var zAxisRotation = false
    var body: some View {
        ZStack {
            Text("How to Rotate Along X, Y and Z")
                .offset(y: -200)
            
            HStack(alignment: .center, spacing: 80) {
                VStack {
                    ZStack {
                        Image("x")
                            .offset(x: 5, y: 0)
                        
                        Image(systemName: "arrow.left.and.right.circle.fill")
                            .font(.largeTitle)
                            .opacity(0.5)
                            .rotationEffect(.degrees(xAxisRotation ? 360 : 0), anchor: .center)
                            .rotation3DEffect(.degrees(80), axis: (x: 0, y: 1, z: 0))
                            .animation(Animation.linear(duration: 1).repeatForever(autoreverses: false))
                            .onAppear() {
                                self.xAxisRotation.toggle()
                        }
                    }
                    Text("x").offset(y: 20)
                }
                
                VStack {
                    ZStack {
                        Image("y")
                            .offset(x: 0, y: -5)
                        
                        Image(systemName: "arrow.left.and.right.circle.fill")
                            .font(.largeTitle)
                            .opacity(0.5)
                            .rotationEffect(.degrees(xAxisRotation ? 360 : 0), anchor: .center)
                            .rotation3DEffect(.degrees(80), axis: (x: 1, y: 0, z: 0))
                            .animation(Animation.linear(duration: 1).repeatForever(autoreverses: false))
                            .onAppear() {
                                self.xAxisRotation.toggle()
                        }
                    }
                    Text("y").offset(y: 20)
                }
                
                VStack {
                    ZStack {
                        Image("z")
                            .offset(x: 5, y: 5)
                        
                        Image(systemName: "arrow.left.and.right.circle.fill")
                            .font(.largeTitle)
                            .opacity(0.5)
                            .rotationEffect(.degrees(xAxisRotation ? 360 : 0), anchor: .center)
                            .rotation3DEffect(.degrees(80), axis: (x: 0, y: 0, z: 1))
                            .animation(Animation.linear(duration: 1).repeatForever(autoreverses: false))
                            .onAppear() {
                                self.xAxisRotation.toggle()
                        }
                    }
                    Text("z").offset(y: 20)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
