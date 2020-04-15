//
//  NewsListView.swift
//  SwiftUI-lookbackheisei
//
//  Created by 中岡黎 on 2019/06/11.
//  Copyright © 2019 NakaokaRei. All rights reserved.
//

import SwiftUI

struct NewsListView : View {
    @EnvironmentObject var LookBackViewModel: LookBackViewModel
    var body: some View {
        NavigationView{
            List{
                ForEach(LookBackViewModel.newsList, id: \.self) { news in
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
        NewsListView().environmentObject(LookBackViewModel())
    }
}
#endif
