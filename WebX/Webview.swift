//
//  Webview.swift
//  WebX
//
//  Created by JIGAR PATEL on 16/08/20.
//  Copyright © 2020 JIGAR PATEL. All rights reserved.
//

import Foundation
import SwiftUI
import WebKit

struct Webview: UIViewRepresentable {
    
    var url: String
    
    func makeUIView(context: UIViewRepresentableContext<Webview>) -> WKWebView {
        
        guard let url = URL(string: self.url) else {
            return WKWebView()
        }
                
        let webview = WKWebView()

        let request = URLRequest(url: url, cachePolicy: .returnCacheDataElseLoad)
        webview.load(request)

        return webview
    }

    func updateUIView(_ webview: WKWebView, context: UIViewRepresentableContext<Webview>) {
        
    }
}
