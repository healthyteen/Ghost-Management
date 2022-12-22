//
//  Dashboard.swift
//  Ghost Management
//
//  Created by Skyler Szijjarto on 12/21/22.
//

import SwiftUI

struct Dashboard: View {
  let webView = WebView(request: URLRequest(url: URL(string: "https://healthy-teen.ghost.io/ghost/#/signin")!))
  
  var body: some View {
    VStack {
        webView
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
