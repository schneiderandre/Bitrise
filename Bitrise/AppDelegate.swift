//
//  AppDelegate.swift
//  Bitrise
//
//  Created by André Schneider on 19/01/16.
//  Copyright © 2016 André Schneider. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(application: UIApplication,
        didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        if let controller = self.window?.rootViewController as? ViewController {
            let viewModel = ViewModel()
            controller.viewModel = viewModel
        }
        return true
    }
}
