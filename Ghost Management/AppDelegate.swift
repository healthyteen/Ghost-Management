//
//  AppDelegate.swift
//  Ghost Management
//
//  Created by Skyler Szijjarto on 1/3/23.
//

import Firebase
import GoogleMobileAds

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

  var window: UIWindow?

  func application(_ application: UIApplication,
      didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {

    // Use Firebase library to configure APIs.
    FirebaseApp.configure()

    // Initialize the Google Mobile Ads SDK.
    GADMobileAds.sharedInstance().start(completionHandler: nil)

    return true
  }

}
