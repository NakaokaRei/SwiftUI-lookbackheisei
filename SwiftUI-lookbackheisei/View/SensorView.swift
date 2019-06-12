//
//  SensorView.swift
//  SwiftUI-lookbackheisei
//
//  Created by 中岡黎 on 2019/06/11.
//  Copyright © 2019 NakaokaRei. All rights reserved.
//

import SwiftUI

struct SensorView : View {
    var image: String
    var body: some View {
            Image(image)
                .resizable()
                .padding(.vertical, 28.0)
                .frame(width: 300, height: 550)
                .aspectRatio(contentMode: .fit)
    }
}

#if DEBUG
struct SensorView_Previews : PreviewProvider {
    static var previews: some View {
        SensorView(image: "heisei")
    }
}
#endif
