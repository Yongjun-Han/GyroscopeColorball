//
//  motionView.swift
//  GyroscopeColorball
//
//  Created by YongJun Han on 2022/12/07.
//

import SwiftUI
//import CoreMotion

struct motionView: View {
    @ObservedObject
    var motion: MotionManager

    var body: some View {
        ZStack{
            VStack {
                Circle()
                    .fill(Color.teal)
                    .frame(width: 100, height: 100)
                    .position(x:motion.x+400, y:motion.y+400)
            }
            VStack {
                Text("X: \(motion.x)")
                Text("Y: \(motion.y)")
                Text("Z: \(motion.z)")
            }
        }
    }
}

struct motionView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
//
//struct ContentView: View {
//
//    @ObservedObject
//    var motion: MotionManager
//
//    var body: some View {
//        VStack {
//            Text("Magnetometer Data")
//            Text("X: \(motion.x)")
//            Text("Y: \(motion.y)")
//            Text("Z: \(motion.z)")
//        }
//    }
//}
//
//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView(motion: MotionManager())
//    }
//}
