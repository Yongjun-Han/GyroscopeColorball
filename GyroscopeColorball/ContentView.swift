//
//  ContentView.swift
//  GyroscopeColorball
//
//  Created by YongJun Han on 2022/12/06.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            NavigationView{
                motionView(motion: MotionManager())
            }
            .tabItem{
                Label("Gyro",systemImage: "circle.hexagonpath.fill")

            }
            NavigationView{
                helloView()
            }
            .tabItem{
                Label("Hello",systemImage: "house.fill")
                
            }
            NavigationView{
                byeView()
            }
            .tabItem{
                Label("Bye",systemImage: "circle.hexagonpath.fill")
                
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
       
    }
}
