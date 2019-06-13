//
//  NewsListView.swift
//  SwiftUI-lookbackheisei
//
//  Created by 中岡黎 on 2019/06/11.
//  Copyright © 2019 NakaokaRei. All rights reserved.
//

import SwiftUI

struct NewsListView : View {
    var newsList: [NewsModel]!
    var body: some View {
        NavigationView{
            List{
                ForEach(newsList.identified(by: \.self)) { news in
                    CardView(newsModel: news)
                }
            }
            .navigationBarTitle(Text("News"))
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
