//
//  NewsListView.swift
//  SwiftUI-lookbackheisei
//
//  Created by 中岡黎 on 2019/06/11.
//  Copyright © 2019 NakaokaRei. All rights reserved.
//

import SwiftUI

struct NewsListView : View {
    var body: some View {
        NavigationView{
            List{
                ForEach(0 ..< 7) { item in
                    CardView()
                }
            }
            .navigationBarTitle(Text("Cards"))
        }
    }
}

#if DEBUG
struct NewsListView_Previews : PreviewProvider {
    static var previews: some View {
        NewsListView()
    }
}
#endif
