//
//  RewardedViewController.swift
//  FBAds
//
//  Created by Adsum MAC 1 on 11/11/21.
//

import UIKit
import FBAudienceNetwork
class RewardedViewController: UIViewController,FBRewardedVideoAdDelegate {
    
    private var rewardedVideoAd: FBRewardedVideoAd?
    override func viewDidLoad() {
        super.viewDidLoad()

        let rewardedVideoAd = FBRewardedVideoAd(placementID: Rewarded_Key)
          rewardedVideoAd.delegate = self
          
          // For auto play video ads, it's recommended to load the ad at least 30 seconds before it is shown
          rewardedVideoAd.load()
          
          self.rewardedVideoAd = rewardedVideoAd
    }
    
    func rewardedVideoAdDidLoad(_ rewardedVideoAd: FBRewardedVideoAd) {
      print("Video ad is loaded and ready to be displayed")
    }

    func rewardedVideoAd(_ rewardedVideoAd: FBRewardedVideoAd, didFailWithError error: Error) {
      print("Rewarded video ad failed to load")
    }

    func rewardedVideoAdDidClick(_ rewardedVideoAd: FBRewardedVideoAd) {
      print("Video ad clicked")
    }

    func rewardedVideoAdDidClose(_ rewardedVideoAd: FBRewardedVideoAd) {
      print("Rewarded Video ad closed - this can be triggered by closing the application, or closing the video end card")
    }

    func rewardedVideoAdVideoComplete(_ rewardedVideoAd: FBRewardedVideoAd) {
      print("Rewarded Video ad video completed - this is called after a full video view, before the ad end card is shown. You can use this event to initialize your reward")
    }
    
    private func showRewardedVideoAd() {
      guard let rewardedVideoAd = rewardedVideoAd, rewardedVideoAd.isAdValid else {
        return
      }
      rewardedVideoAd.show(fromRootViewController: self)
    }
    
    func rewardedVideoAdWillClose(_ rewardedVideoAd: FBRewardedVideoAd) {
      print("The user clicked on the close button, the ad is just about to close")
    }

    func rewardedVideoAdWillLogImpression(_ rewardedVideoAd: FBRewardedVideoAd) {
      print("Rewarded Video impression is being captured")
    }
    

}
