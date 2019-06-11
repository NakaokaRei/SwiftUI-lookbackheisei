//
//  ContentView.swift
//  SwiftUI-lookbackheisei
//
//  Created by 中岡黎 on 2019/06/11.
//  Copyright © 2019 NakaokaRei. All rights reserved.
//

import SwiftUI

struct ContentView : View {
    @State private var selection = 0
    var body: some View {
        TabbedView(selection: $selection){
            SensorView()
                .font(.title)
                .tabItemLabel(Image("game"))
                .tag(0)
            NewsListView()
                .font(.title)
                .tabItemLabel(Image("doc"))
                .tag(1)
        }
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif