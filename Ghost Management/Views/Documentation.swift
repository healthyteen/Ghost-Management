//
//  Documentation.swift
//  Ghost Management
//
//  Created by Skyler Szijjarto on 12/21/22.
//

import SwiftUI

struct Documentation: View {
  let webView = WebView(request: URLRequest(url: URL(string: "https://ghost.org/docs/")!))
  
  var body: some View {
    VStack {
        webView
        }
    }
}

struct Documentation_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
