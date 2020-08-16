//
//  WebviewPro.swift
//  WebX
//
//  Created by JIGAR PATEL on 16/08/20.
//  Copyright © 2020 JIGAR PATEL. All rights reserved.
//

import Foundation
import SwiftUI
import WebKit


struct WebviewPro: UIViewControllerRepresentable {
    
    let url: URL

    func makeUIViewController(context: Context) -> WebviewController {
        let webviewController = WebviewController()

        let request = URLRequest(url: self.url, cachePolicy: .returnCacheDataElseLoad)
        webviewController.WebviewPro.load(request)

        return webviewController
    }

    func updateUIViewController(_ webviewController: WebviewController, context: Context) {
        let request = URLRequest(url: self.url, cachePolicy: .returnCacheDataElseLoad)
        webviewController.WebviewPro.load(request)
    }
}
