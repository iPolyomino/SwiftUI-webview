//
//  ContentView.swift
//  webview
//
//  Created by 萩倉丈 on 2021/06/12.
//

import SwiftUI

struct ContentView: View {
    @State var isYahooModal : Bool = false
    @State var isNikkanModal : Bool = false
    var body: some View {
        VStack{
            Button(action: {
                isYahooModal = true
            }) {
                Text("Yahoo News スポーツ")
            }.sheet(isPresented: $isYahooModal) {
                WebView(loadUrl: "https://news.yahoo.co.jp/categories/sports")
            }.padding()
            
            Button(action: {
                isNikkanModal = true
            }) {
                Text("日刊スポーツ")
            }.sheet(isPresented: $isNikkanModal) {
                WebView(loadUrl: "https://www.nikkansports.com/")
            }.padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
