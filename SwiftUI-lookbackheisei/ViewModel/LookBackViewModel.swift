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
import Alamofire

final class LookBackViewModel: ObservableObject  {
    let motionManager = CMMotionManager()
    let url = [
        "twitter": "https://script.google.com/macros/s/AKfycbyhR8HyQKcf2b9wRUmsCm-6D_EK1zFlJzIpPIhrBuRd49FVFtpT/exec",
        "heisei": "https://script.google.com/macros/s/AKfycbxc-TKyZ8Lp-9Ed05et_wIGw55RLGBGwhNSY2lb2z9iQdy1wLs/exec"]
    var degree: Double! = 0
    @Published var imageName = "heisei"
    @Published var newsList: [NewsModel] = []
    init() {
        self.motionCapture()
    }
    
    func request(url: String) {
        Alamofire.request(url,
            method: .get,
            parameters: nil,
            encoding: JSONEncoding.default,
            headers: nil)
            .response { response in
                guard let data = response.data else { return }
                let newsModel: NewsModel = try! JSONDecoder().decode(NewsModel.self, from: data)
                self.newsList.insert(newsModel, at: 0)
        }
    }
    
    func motionCapture() {
        motionManager.deviceMotionUpdateInterval = 0.1
        motionManager.startDeviceMotionUpdates( to: OperationQueue.current!, withHandler:{
            deviceManager, error in
            let gyro: CMRotationRate = deviceManager!.rotationRate
            self.loop(angular: gyro.y)
        })
    }
    
    func loop(angular: Double){
        self.degree += angular * 0.1 * 57.2
        if self.degree >= 90{
            self.imageName = "left"
            self.request(url: self.url["twitter"]!)
            self.degree = 0
        } else if -self.degree >= 90{
            self.imageName = "right"
            self.request(url: self.url["heisei"]!)
            self.degree = 0
        }
    }
    
    
    
}
