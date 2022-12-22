//
//  Home.swift
//  Ghost Management
//
//  Created by Skyler Szijjarto on 12/21/22.
//

import SwiftUI

// Image
let imageFont: Font? = .body
let imageColor: Color = Color.white

// Text Font
let textFont: Font? = .caption

// Rectangle Frame
let rectangleWidth: CGFloat = 142.5
let rectangleHeight: CGFloat = 55
let rectangleAlignment: Alignment = .bottomLeading

struct Home: View {
  let webView = WebView(request: URLRequest(url: URL(string: "https://healthy-teen.ghost.io/ghost/#/dashboard")!))
  
  var body: some View {
    ZStack {
      webView
            .overlay(
                Rectangle()
                    .cornerRadius(20)
                    .foregroundColor(Color(.black))
                    .frame(width: 132.5, height: 45, alignment: .bottomLeading)
                    .frame(width: rectangleWidth, height: rectangleHeight, alignment: .bottomLeading)
                    .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: rectangleAlignment)
                    .shadow(color: Color(.black), radius: 1, x: 1, y: 1)
                    .overlay(
                        HStack {
                            VStack {
                                Button(action: {
                                    self.webView.goBack(); HapticManager.instance.impact(style: .soft)
}) {
                                    Image(systemName: "chevron.left.square.fill")
                                        .font(imageFont)
                                        .foregroundColor(imageColor)
                                        .scaledToFit()
                                        .frame(width: 25)
                                        .font(imageFont)
                                        .padding(.bottom, 1)
                                        .padding(.top, 3)
                                }
                            }
                            
                            VStack {
                                Button(action: {
                                    self.webView.goHome(); HapticManager.instance.notification(type: .success)
                                }){
                                    Image(systemName: "house.fill")
                                        .font(imageFont)
                                        .foregroundColor(imageColor)
                                        .scaledToFit()
                                        .frame(width: 20)
                                        .padding(.bottom, 1)
//                                      .padding(.horizontal, 25)
                                        .padding(.horizontal, 10)
                                }
                            }
                            VStack {
                                Button(action: {
                                    self.webView.goBack(); HapticManager.instance.impact(style: .soft)
                                }){
                                    Image(systemName: "chevron.right.square.fill")
                                        .font(imageFont)
                                        .foregroundColor(imageColor)
                                        .scaledToFit()
                                        .frame(width: 25)
                                        .padding(.bottom, 1)
                                        .padding(.top, 3)
                                }
                            }
                        }
                        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: rectangleAlignment)
                        .padding(.bottom, 12)
                        .padding(.horizontal, 12)
                    )
                    .padding(.bottom, 10)
                    .padding(.horizontal, 10)
            )
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
