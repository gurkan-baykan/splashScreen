//
//  SplashScreen.swift
//  ExampleProject
//
//  Created by Gürkan Baykan on 1.03.2024.
//

import UIKit
import React
import Foundation

@objc(RNSplashScreenModule)
class RNSplashScreenModule: NSObject {
  
  @objc
  static func requiresMainQueueSetup() -> Bool {
      return true
  }
  
  @objc func showSplashScreen() {
    DispatchQueue.main.async {
          let appDelegate = UIApplication.shared.delegate
          let viewController = SplashScreenController()
          viewController.message = "Loading..."
          viewController.modalPresentationStyle = .fullScreen
          viewController.restorationIdentifier = "test_1"
        
        appDelegate?.window??.rootViewController?.present(viewController, animated: false)
       
      }
  }
  @objc func hideSplashScreen() {
    DispatchQueue.main.async {
            let appDelegate = UIApplication.shared.delegate
            if let presentedViewController = appDelegate?.window??.rootViewController?.presentedViewController as? SplashScreenController {
                presentedViewController.dismiss(animated: false) {
                    presentedViewController.view.removeFromSuperview()
                }
            }
        }
  }
}
