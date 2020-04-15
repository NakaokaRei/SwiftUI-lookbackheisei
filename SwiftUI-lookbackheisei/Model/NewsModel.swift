//
//  NewsModel.swift
//  SwiftUI-lookbackheisei
//
//  Created by 中岡黎 on 2019/06/13.
//  Copyright © 2019 NakaokaRei. All rights reserved.
//

import SwiftUI
import Foundation

struct NewsModel: Hashable, Codable {
    var title: String
    var url: String
    var date: String
    var img: String
    var genre: String
}
