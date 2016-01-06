//
//  AppDelegate.swift
//  TVMLApp
//
//  Created by Jose on 1/6/16.
//  Copyright © 2016 Rain Agency. All rights reserved.
//

import UIKit
import TVMLKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate, TVApplicationControllerDelegate {

    var window: UIWindow?
    var appController: TVApplicationController?
    
    static let TVBaseURL = "http://localhost:8484/"
    // This is the bridge, TV aplication controller is going to use this boot URL to try to find and find where the javascript files are.
    static let TVBootURL = "\(AppDelegate.TVBaseURL)js/app.js"


    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        // Override point for customization after application launch.
        
        window = UIWindow(frame: UIScreen.mainScreen().bounds)
        let appControllerContext = TVApplicationControllerContext()
        
        if let javascriptURL = NSURL(string: AppDelegate.TVBootURL) {
            appControllerContext.javaScriptApplicationURL = javascriptURL
            
        }
        
        // this is how apple example code does it. I'm doing it because the javascript might use it too in the app.
        appControllerContext.launchOptions["BASEURL"] = AppDelegate.TVBaseURL
        appController = TVApplicationController(context: appControllerContext, window: window, delegate: self)
        
        return true
    }

    func applicationWillResignActive(application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(application: UIApplication) {
        // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }
    
    // MARK: TVApplicationControllerDelegate. I just copied this from apple sample app.
    
    func appController(appController: TVApplicationController, didFinishLaunchingWithOptions options: [String: AnyObject]?) {
        print("\(__FUNCTION__) invoked with options: \(options)")
    }
    
    func appController(appController: TVApplicationController, didFailWithError error: NSError) {
        print("\(__FUNCTION__) invoked with error: \(error)")
        
        let title = "Error Launching Application"
        let message = error.localizedDescription
        let alertController = UIAlertController(title: title, message: message, preferredStyle:.Alert )
        
        self.appController?.navigationController.presentViewController(alertController, animated: true, completion: { () -> Void in
            // ...
        })
    }
    
    func appController(appController: TVApplicationController, didStopWithOptions options: [String: AnyObject]?) {
        print("\(__FUNCTION__) invoked with options: \(options)")
    }



}

