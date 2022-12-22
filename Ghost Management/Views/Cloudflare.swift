//
//  Cloudflare.swift
//  Ghost Management
//
//  Created by Skyler Szijjarto on 12/22/22.
//

import SwiftUI

struct Cloudflare: View {
  let webView = WebView(request: URLRequest(url: URL(string: "https://dash.cloudflare.com/87c0dd934a0ca8e1bcce53526030867a/healthyteen.org")!))
  
  var body: some View {
    VStack {
        webView
        }
    }
}

struct Cloudflare_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
