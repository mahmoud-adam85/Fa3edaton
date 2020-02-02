//
//  AppDelegate.swift
//  Fa3edaton
//
//  Created by Mahmoud Adam on 02.02.20.
//  Copyright © 2020 lognlabs. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?
    
    func application(_ application: UIApplication, willFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        self.window = UIWindow(frame: UIScreen.main.bounds)
        self.window!.rootViewController = MainViewController()
        return true
    }
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {

        self.window!.makeKeyAndVisible()
        return true
    }



}

