//
//  ViewController.swift
//  UserMessagePlatformDemo
//
//  Created by 有村皓太郎 on 2022/03/14.
//

import UIKit
import UserMessagingPlatform

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
      
        // Create a UMPRequestParameters object.
        let parameters = UMPRequestParameters()
        // Set tag for under age of consent. Here false means users are not under age.
        parameters.tagForUnderAgeOfConsent = false

        // Request an update to the consent information.
        UMPConsentInformation.sharedInstance.requestConsentInfoUpdate(
            with: parameters,
            completionHandler: { error in
              if error != nil {
                // Handle the error.
              } else {
                // The consent information state was updated.
                // You are now ready to check if a form is
                // available.
              }
            })
    }


}

