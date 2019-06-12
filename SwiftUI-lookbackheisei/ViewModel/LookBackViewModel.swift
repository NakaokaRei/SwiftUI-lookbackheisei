//
//  LookBackViewModel.swift
//  SwiftUI-lookbackheisei
//
//  Created by 中岡黎 on 2019/06/12.
//  Copyright © 2019 NakaokaRei. All rights reserved.
//

import SwiftUI
import Combine
import CoreMotion

final class LookBackViewModel: BindableObject  {
    let didChange = PassthroughSubject<LookBackViewModel, Never>()
    let motionManager = CMMotionManager()
    var gyro_x: Double!
    var gyro_y: Double!
    var gyro_z: Double!
    var degree:Double! = 0
    
    var image = "heisei" {
        didSet {
            didChange.send(self)
        }
    }
    
    init() {
        motionManager.deviceMotionUpdateInterval = 0.1
        motionManager.startDeviceMotionUpdates( to: OperationQueue.current!, withHandler:{
            deviceManager, error in
            let gyro: CMRotationRate = deviceManager!.rotationRate
            self.gyro_x = gyro.x
            self.gyro_y = gyro.y
            self.gyro_z = gyro.z
            self.loop(angular: gyro.y)
        })
    }
    
    func loop(angular: Double){
        self.degree += angular * 0.1 * 57.2
        if self.degree >= 90{
            self.image = "left"
            self.degree = 0
        } else if -self.degree >= 90{
            self.image = "right"
            self.degree = 0
        }
    }
    
    
    
}
