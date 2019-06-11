//
//  SensorView.swift
//  SwiftUI-lookbackheisei
//
//  Created by 中岡黎 on 2019/06/11.
//  Copyright © 2019 NakaokaRei. All rights reserved.
//

import SwiftUI

struct SensorView : View {
    var body: some View {
        NavigationView{
            List{
                Image("heisei")
                    .resizable()
                    .padding(.vertical, 28.0)
                    .frame(width: 370, height: 650)
                    .aspectRatio(contentMode: .fit)
            }
            .navigationBarTitle(Text("Sensor"))
        }
    }
}

#if DEBUG
struct SensorView_Previews : PreviewProvider {
    static var previews: some View {
        SensorView()
    }
}
#endif
