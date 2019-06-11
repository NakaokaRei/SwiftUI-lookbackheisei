//
//  CardView.swift
//  SwiftUI-lookbackheisei
//
//  Created by 中岡黎 on 2019/06/11.
//  Copyright © 2019 NakaokaRei. All rights reserved.
//

import SwiftUI

struct CardView : View {
    var body: some View {
        VStack {
            HStack {
                Spacer()
                Image("sample")
                    .resizable()
                    .frame(width: 300, height: 200)
                    .aspectRatio(contentMode: .fit)
                Spacer()
            }
                Text("ここにタイトルを表示")
                    .font(.title)
                Text("日付: 10/20")
                    .font(.subheadline)
                    .color(.gray)
                Text("ジャンル: サンプル")
                    .font(.subheadline)
                    .color(.gray)
                PresentationButton(
                    Text("READ MORE")
                        .color(.blue)
                    , destination: ReadMoreView())
                }
                .padding(.top)
        

    }
}

#if DEBUG
struct CardView_Previews : PreviewProvider {
    static var previews: some View {
        CardView()
    }
}
#endif
