//
//  LookBackViewModel.swift
//  SwiftUI-lookbackheisei
//
//  Created by 中岡黎 on 2019/06/12.
//  Copyright © 2019 NakaokaRei. All rights reserved.
//

import SwiftUI
import Combine

final class LookBackViewModel: BindableObject  {
    let didChange = PassthroughSubject<LookBackViewModel, Never>()
    
    var image = "heisei" {
        didSet {
            didChange.send(self)
        }
    }
    
    
    
}
