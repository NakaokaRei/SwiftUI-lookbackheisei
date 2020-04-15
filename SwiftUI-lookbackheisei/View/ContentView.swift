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
    @EnvironmentObject var LookBackViewModel: LookBackViewModel
    var body: some View {
        TabView{
            SensorView()
                .tabItem {
                    Image(systemName: "1.square.fill")
                    Text("First")
                }
            NewsListView()
                .tabItem {
                    Image(systemName: "2.square.fill")
                    Text("Second")
                }
        }
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView().environmentObject(LookBackViewModel())
    }
}
#endif
