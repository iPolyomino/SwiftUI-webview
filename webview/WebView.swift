//
//  WebView.swift
//  webview
//
//  Created by 萩倉丈 on 2021/06/12.
//

import SwiftUI
import WebKit

struct WebView: UIViewRepresentable {
    var loadUrl:String

    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }

    func updateUIView(_ uiView: WKWebView, context: Context) {
        uiView.load(URLRequest(url: URL(string: loadUrl)!))
    }
}
