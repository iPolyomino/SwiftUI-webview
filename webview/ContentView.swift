//
//  ContentView.swift
//  webview
//
//  Created by 萩倉丈 on 2021/06/12.
//

import SwiftUI

struct ContentView: View {
    @State var isModal : Bool = false
    var body: some View {
        Button(action: {
            isModal = true
        }) {
            Text("Apple")
        }.sheet(isPresented: $isModal) {
            WebView(loadUrl: "https://www.apple.com")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
