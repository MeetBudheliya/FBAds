//
//  NativeViewController.swift
//  FBAds
//
//  Created by Adsum MAC 1 on 11/11/21.
//

import UIKit
import FBAudienceNetwork

class NativeViewController: UIViewController,FBNativeAdDelegate {

    private var nativeAd: FBNativeAd?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       
        let nativeAd = FBNativeAd(placementID: Native_Key)
          nativeAd.delegate = self
          nativeAd.loadAd()
    }
    func nativeAd(_ nativeAd: FBNativeAd, didFailWithError error: Error) {
      print("Native ad failed to load with error: \(error.localizedDescription)")
    }

}
