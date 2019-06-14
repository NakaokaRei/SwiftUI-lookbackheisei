//
//  ReadMoreView.swift
//  SwiftUI-lookbackheisei
//
//  Created by 中岡黎 on 2019/06/11.
//  Copyright © 2019 NakaokaRei. All rights reserved.
//

import SwiftUI
import WebKit

struct ReadMoreView : UIViewRepresentable {
    var url: String!
    
    func makeUIView(context: Context) -> WKWebView {
        WKWebView(frame: .zero)
    }
    
    func updateUIView(_ view: WKWebView, context: Context) {
        let urlNS = NSURL(string: url)
        let req = NSURLRequest(url:urlNS! as URL)
        view.load(req as URLRequest)
    }
    
}

#if DEBUG
struct ReadMoreView_Previews : PreviewProvider {
    static var previews: some View {
        ReadMoreView(url: "https://github.com/")
    }
}
#endif
