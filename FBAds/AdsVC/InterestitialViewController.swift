//
//  InterestitialViewController.swift
//  FBAds
//
//  Created by Adsum MAC 1 on 11/11/21.
//

import UIKit
import FBAudienceNetwork

class InterestitialViewController: UIViewController,FBInterstitialAdDelegate {

    private var interstitialAd: FBInterstitialAd?
    override func viewDidLoad() {
        super.viewDidLoad()

        // Instantiate an InterstitialAd object.
          // NOTE: the placement ID will eventually identify this as your app. You can ignore it while you are testing
          // and replace it later when you have signed up.
          // While you are using this temporary code you will only get test ads and if you release
          // your code like this to the App Store your users will not receive ads (you will get a 'No Fill' error).
          let interstitialAd = FBInterstitialAd(placementID: Interestitial_Key)
          interstitialAd.delegate = self

          // For auto play video ads, it's recommended to load the ad at least 30 seconds before it is shown
          interstitialAd.load()
          
          self.interstitialAd = interstitialAd
    }
    

    func interstitialAdDidLoad(_ interstitialAd: FBInterstitialAd) {
      guard interstitialAd.isAdValid else {
        return
      }
      print("Ad is loaded and ready to be displayed")
      interstitialAd.show(fromRootViewController: self)
    }
    
    func interstitialAdWillLogImpression(_ interstitialAd: FBInterstitialAd) {
      print("The user sees the ad")
      // Use this function as indication for a user's impression on the ad.
    }

    func interstitialAdDidClick(_ interstitialAd: FBInterstitialAd) {
      print("The user clicked on the ad and will be taken to its destination")
      // Use this function as indication for a user's click on the ad.
    }

    func interstitialAdWillClose(_ interstitialAd: FBInterstitialAd) {
      print("The user clicked on the close button, the ad is just about to close")
      // Consider to add code here to resume your app's flow
    }

    func interstitialAdDidClose(_ interstitialAd: FBInterstitialAd) {
      print("The user clicked on the close button, the ad is just about to close")
      // Consider to add code here to resume your app's flow
    }
    
    func interstitialAd(_ interstitialAd: FBInterstitialAd, didFailWithError error: Error) {
      print("Interstitial ad failed to load with error: \(error.localizedDescription)")
    }

}
