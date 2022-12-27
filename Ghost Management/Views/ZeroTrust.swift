//
//  ZeroTrust.swift
//  Ghost Management
//
//  Created by Skyler Szijjarto on 12/26/22.
//

import SwiftUI

struct ZeroTrust: View {
  let webView = WebView(request: URLRequest(url: URL(string: "one.dash.cloudflare.com")!))
  
  var body: some View {
    VStack {
        webView
        }
    }
}

struct ZeroTrust_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
