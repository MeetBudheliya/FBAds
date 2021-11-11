//
//  AppDelegate.swift
//  FBAds
//
//  Created by Adsum MAC 1 on 11/11/21.
//

import UIKit
import FBAudienceNetwork

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        FBAdSettings.addTestDevice(FBAdSettings.testDeviceHash())
        FBAdSettings.setAdvertiserTrackingEnabled(true)
        let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "Nav") as? UINavigationController
        window?.rootViewController = vc
        window?.makeKeyAndVisible()
        return true
    }

}

