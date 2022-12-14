//
//  Manager.swift
//  GyroscopeColorball
//
//  Created by YongJun Han on 2022/12/07.
//

import Foundation
import Combine
import CoreMotion

class MotionManager: ObservableObject {

    private var motionManager: CMMotionManager

    @Published
    var x: Double = 0.0
    @Published
    var y: Double = 0.0
    @Published
    var z: Double = 0.0


    init() {
        self.motionManager = CMMotionManager()
        self.motionManager.magnetometerUpdateInterval = 1/60
        self.motionManager.startMagnetometerUpdates(to: .main) { (magnetometerData, error) in
            guard error == nil else {
                print(error!)
                return
            }

            if let magnetData = magnetometerData {
                self.x = magnetData.magneticField.x
                self.y = magnetData.magneticField.y
                self.z = magnetData.magneticField.z
            }

        }

    }
}

//import Foundation
//import Combine
//import CoreMotion
//
//class MotionManager: ObservableObject {
//
//    private var motionManager: CMMotionManager
//
//    @Published
//    var x: Double = 0.0
//    @Published
//    var y: Double = 0.0
//    @Published
//    var z: Double = 0.0
//
//
//    init() {
//        self.motionManager = CMMotionManager()
//        self.motionManager.magnetometerUpdateInterval = 1/60
//        self.motionManager.startMagnetometerUpdates(to: .main) { (magnetometerData, error) in
//            guard error == nil else {
//                print(error!)
//                return
//            }
//
//            if let magnetData = magnetometerData {
//                self.x = magnetData.magneticField.x
//                self.y = magnetData.magneticField.y
//                self.z = magnetData.magneticField.z
//            }
//
//        }
//
//    }
//}

