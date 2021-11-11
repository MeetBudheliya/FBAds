//
//  BannerViewController.swift
//  FBAds
//
//  Created by Adsum MAC 1 on 11/11/21.
//

import UIKit
import FBAudienceNetwork


class BannerViewController: UIViewController,FBAdViewDelegate {

    @IBOutlet weak var AdContanerView: UIView!
    private var adView: FBAdView?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let adView = FBAdView(placementID: Banner_Key, adSize: kFBAdSizeHeight50Banner, rootViewController: self)
          adView.frame = CGRect(x: 0, y: 0, width: 320, height: 250)
          adView.delegate = self
          adView.loadAd()
          self.adView = adView
    }
    
    func adViewDidClick(_ adView: FBAdView) {
      print("Ad was clicked.")
    }

    func adViewDidFinishHandlingClick(_ adView: FBAdView) {
      print("Ad did finish click handling.")
    }

    func adViewWillLogImpression(_ adView: FBAdView) {
      print("Ad impression is being captured.")
    }
    
    func adView(_ adView: FBAdView, didFailWithError error: Error) {
      print("Ad failed to load with error: \(error.localizedDescription)")
    }

    func adViewDidLoad(_ adView: FBAdView) {
      print("Ad was loaded and ready to be displayed")
      showAd()
    }

    private func showAd() {
      guard let adView = adView, adView.isAdValid else {
        return
      }
      AdContanerView.addSubview(adView)
    }
}
