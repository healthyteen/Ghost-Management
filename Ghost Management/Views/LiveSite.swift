//
//  LiveSite.swift
//  Ghost Management
//
//  Created by Skyler Szijjarto on 12/21/22.
//

import SwiftUI

struct LiveSite: View {
  let webView = WebView(request: URLRequest(url: URL(string: "https://www.healthyteen.org")!))
  
  var body: some View {
    VStack {
        webView
        }
    }
}

struct LiveSite_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
