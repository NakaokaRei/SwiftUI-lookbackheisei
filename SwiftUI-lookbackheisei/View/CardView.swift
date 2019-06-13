//
//  CardView.swift
//  SwiftUI-lookbackheisei
//
//  Created by 中岡黎 on 2019/06/11.
//  Copyright © 2019 NakaokaRei. All rights reserved.
//

import SwiftUI

struct CardView : View {
    var newsModel: NewsModel!
    var body: some View {
        VStack {
            HStack {
                Spacer()
                Image(uiImage: self.getImageByUrl(url: newsModel.img))
                    .resizable()
                    .frame(width: 300, height: 200)
                    .aspectRatio(contentMode: .fit)
                Spacer()
            }
                Text(newsModel!.title)
                    .font(.title)
            Text("date: \(newsModel.date)")
                    .font(.subheadline)
                    .color(.gray)
            Text("ジャンル: \(newsModel.genre)")
                    .font(.subheadline)
                    .color(.gray)
                PresentationButton(
                    Text("READ MORE")
                        .color(.blue)
                    , destination: ReadMoreView())
                }
                .padding(.top)

    }
    
    func getImageByUrl(url: String) -> UIImage{
        let url = URL(string: url)
        do {
            let data = try Data(contentsOf: url!)
            return UIImage(data: data)!
        } catch let err {
            print("Error : \(err.localizedDescription)")
        }
        return UIImage()
    }
    
}

#if DEBUG
struct CardView_Previews : PreviewProvider {
    static var previews: some View {
        CardView()
    }
}
#endif
