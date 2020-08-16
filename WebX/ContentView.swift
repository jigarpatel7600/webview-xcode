//
//  ContentView.swift
//  WebX
//
//  Created by JIGAR PATEL on 16/08/20.
//  Copyright © 2020 JIGAR PATEL. All rights reserved.
//

import SwiftUI


struct ContentView: View {
    
    let website = URL(string: "https://galleonsoft.com")
    let webUrl = "https://jigar.ga"

    var body: some View {
        
        
        //Two webview in Vertical.
//        VStack(spacing: 10) {
//            VStack {
//                Webview(url: webUrl)
//            }
//
//            VStack {
//                WebviewPro(url: website!)
//            }
//        }
        
        
        //SwiftUI Webview with a Progress Bar
        WebviewPro(url: website!)
        
        //SwiftUI Webview
        //Webview(url: webUrl)
       
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


func isValidUrl(url: String) -> Bool {
    let urlRegEx = "^(https?://)?(www\\.)?([-a-z0-9]{1,63}\\.)*?[a-z0-9][-a-z0-9]{0,61}[a-z0-9]\\.[a-z]{2,6}(/[-\\w@\\+\\.~#\\?&/=%]*)?$"
    let urlTest = NSPredicate(format:"SELF MATCHES %@", urlRegEx)
    let result = urlTest.evaluate(with: url)
    return result
}

