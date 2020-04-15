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
    let width: CGFloat = 300
    let height: CGFloat = 200
    @State var show = false
    var body: some View {
            VStack {
                HStack {
                    Spacer()
                    Image(uiImage: self.getImageByUrl(url: (newsModel?.img)!))
                        .resizable()
                        .frame(width: width, height: height)
                        .aspectRatio(contentMode: .fit)
                    Spacer()
                }
                Text(String(newsModel!.title))
                    .font(.title)
                Text("date: \(newsModel.date)")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                Text("ジャンル: \(newsModel.genre)")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                Button(action:{self.show.toggle()}){
                    Text("Read More")
                }.sheet(isPresented: $show){
                    ReadMoreView(url: self.newsModel.url)
                }
                    }.padding(.top)
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
        CardView(newsModel: NewsModel(title: "sample",
                                      url: "https://github.com/",
                                      date: "2020/10",
                                      img: "http://wwwjp.kodak.com/JP/images/ja/digital/digitalcamera/standard/c330/sample/C330_02.jpg",
                                      genre: "sample"))
    }
}
#endif
