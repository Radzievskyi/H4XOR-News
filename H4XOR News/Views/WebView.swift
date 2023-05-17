//
//  WebView.swift
//  H4XOR News
//
//  Created by Mykhailo Radzievskyi on 2023-05-08.
//

import SwiftUI
import WebKit

struct WebView: UIViewRepresentable {
    let urlString: String?
    
    func makeUIView(context: Context) -> some UIView {
        return WKWebView()
    }
    
    func updateUIView(_ uiView: Self.UIViewType, context: Context) {
        guard urlString != nil else {
            return
        }
        
        if let url = URL(string: urlString!) {
            let request = URLRequest(url: url)
            if uiView is WKWebView {
                (uiView as! WKWebView).load(request)
            }
        }
    }
}
